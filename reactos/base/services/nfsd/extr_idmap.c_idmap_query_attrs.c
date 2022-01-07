
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_lookup {int dummy; } ;
struct idmap_config {int * attributes; int base; } ;
struct idmap_context {int ldap; struct idmap_config config; } ;
typedef int PCHAR ;
typedef int LDAPMessage ;


 scalar_t__ ATTR_ISSET (unsigned int const,int) ;
 int FILTER_LEN ;
 int LDAP_NO_RESULTS_RETURNED ;
 int LDAP_NO_SUCH_ATTRIBUTE ;
 int LDAP_SCOPE_SUBTREE ;
 int LdapMapErrorToWin32 (int) ;
 int eprintf (char*,char*,int,int,...) ;
 int idmap_filter (struct idmap_config*,struct idmap_lookup const*,char*,int) ;
 int ldap_err2stringA (int) ;
 int * ldap_first_entry (int ,int *) ;
 int * ldap_get_values (int ,int *,int ) ;
 int ldap_msgfree (int *) ;
 int ldap_search_st (int ,int ,int ,char*,int *,int ,int *,int **) ;

__attribute__((used)) static int idmap_query_attrs(
    struct idmap_context *context,
    const struct idmap_lookup *lookup,
    const unsigned attributes,
    const unsigned optional,
    PCHAR *values[],
    const int len)
{
    char filter[FILTER_LEN];
    struct idmap_config *config = &context->config;
    LDAPMessage *res = ((void*)0), *entry;
    int i, status;


    status = idmap_filter(config, lookup, filter, FILTER_LEN);
    if (status)
        goto out;


    status = ldap_search_st(context->ldap, config->base,
        LDAP_SCOPE_SUBTREE, filter, ((void*)0), 0, ((void*)0), &res);
    if (status) {
        eprintf("ldap search for '%s' failed with %d: %s\n",
            filter, status, ldap_err2stringA(status));
        status = LdapMapErrorToWin32(status);
        goto out;
    }

    entry = ldap_first_entry(context->ldap, res);
    if (entry == ((void*)0)) {
        status = LDAP_NO_RESULTS_RETURNED;
        eprintf("ldap search for '%s' failed with %d: %s\n",
            filter, status, ldap_err2stringA(status));
        status = LdapMapErrorToWin32(status);
        goto out;
    }


    for (i = 0; i < len; i++) {
        if (ATTR_ISSET(attributes, i)) {
            values[i] = ldap_get_values(context->ldap,
                entry, config->attributes[i]);


            if (values[i] == ((void*)0) && !ATTR_ISSET(optional, i)) {
                status = LDAP_NO_SUCH_ATTRIBUTE;
                eprintf("ldap entry for '%s' missing required "
                    "attribute '%s', returning %d: %s\n",
                    filter, config->attributes[i],
                    status, ldap_err2stringA(status));
                status = LdapMapErrorToWin32(status);
                goto out;
            }
        }
    }
out:
    if (res) ldap_msgfree(res);
    return status;
}
