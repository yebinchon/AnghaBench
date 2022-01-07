
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; int timeout; int hostname; int port; } ;
struct idmap_context {TYPE_1__ config; int * ldap; int groups; int users; } ;


 int GetLastError () ;
 int LDAP_OPT_PROTOCOL_VERSION ;
 int LDAP_OPT_TIMELIMIT ;
 int LDAP_SUCCESS ;
 int LdapGetLastError () ;
 int LdapMapErrorToWin32 (int) ;
 int NO_ERROR ;
 int cache_init (int *,int *) ;
 struct idmap_context* calloc (int,int) ;
 int config_init (TYPE_1__*) ;
 int eprintf (char*,int,...) ;
 int group_cache_ops ;
 int ldap_err2stringA (int) ;
 int * ldap_init (int ,int ) ;
 int ldap_set_option (int *,int ,void*) ;
 int nfs41_idmap_free (struct idmap_context*) ;
 int user_cache_ops ;

int nfs41_idmap_create(
    struct idmap_context **context_out)
{
    struct idmap_context *context;
    int status = NO_ERROR;

    context = calloc(1, sizeof(struct idmap_context));
    if (context == ((void*)0)) {
        status = GetLastError();
        goto out;
    }


    cache_init(&context->users, &user_cache_ops);
    cache_init(&context->groups, &group_cache_ops);


    status = config_init(&context->config);
    if (status) {
        eprintf("config_init() failed with %d\n", status);
        goto out_err_free;
    }


    context->ldap = ldap_init(context->config.hostname, context->config.port);
    if (context->ldap == ((void*)0)) {
        status = LdapGetLastError();
        eprintf("ldap_init(%s) failed with %d: %s\n",
            context->config.hostname, status, ldap_err2stringA(status));
        status = LdapMapErrorToWin32(status);
        goto out_err_free;
    }

    status = ldap_set_option(context->ldap, LDAP_OPT_PROTOCOL_VERSION,
        (void *)&context->config.version);
    if (status != LDAP_SUCCESS) {
        eprintf("ldap_set_option(version=%d) failed with %d\n",
            context->config.version, status);
        status = LdapMapErrorToWin32(status);
        goto out_err_free;
    }

    if (context->config.timeout) {
        status = ldap_set_option(context->ldap, LDAP_OPT_TIMELIMIT,
            (void *)&context->config.timeout);
        if (status != LDAP_SUCCESS) {
            eprintf("ldap_set_option(timeout=%d) failed with %d\n",
                context->config.timeout, status);
            status = LdapMapErrorToWin32(status);
            goto out_err_free;
        }
    }

    *context_out = context;
out:
    return status;

out_err_free:
    nfs41_idmap_free(context);
    goto out;
}
