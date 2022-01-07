
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_lookup {int type; size_t klass; size_t attr; int value; } ;
struct idmap_config {int * attributes; int * classes; } ;
typedef int UINT_PTR ;
typedef int UINT ;


 int ERROR_BUFFER_OVERFLOW ;
 int ERROR_INVALID_PARAMETER ;
 int FAILED (int ) ;
 int NO_ERROR ;
 int StringCchPrintfA (char*,size_t,char*,int ,int ,int ) ;


 int eprintf (char*,int ,int ) ;

__attribute__((used)) static int idmap_filter(
    struct idmap_config *config,
    const struct idmap_lookup *lookup,
    char *filter,
    size_t filter_len)
{
    UINT_PTR i;
    int status = NO_ERROR;

    switch (lookup->type) {
    case 129:
        i = (UINT_PTR)lookup->value;
        if (FAILED(StringCchPrintfA(filter, filter_len,
                "(&(objectClass=%s)(%s=%u))",
                config->classes[lookup->klass],
                config->attributes[lookup->attr], (UINT)i))) {
            status = ERROR_BUFFER_OVERFLOW;
            eprintf("ldap filter buffer overflow: '%s=%u'\n",
                config->attributes[lookup->attr], (UINT)i);
        }
        break;

    case 128:
        if (FAILED(StringCchPrintfA(filter, filter_len,
                "(&(objectClass=%s)(%s=%s))",
                config->classes[lookup->klass],
                config->attributes[lookup->attr], lookup->value))) {
            status = ERROR_BUFFER_OVERFLOW;
            eprintf("ldap filter buffer overflow: '%s=%s'\n",
                config->attributes[lookup->attr], lookup->value);
        }
        break;

    default:
        status = ERROR_INVALID_PARAMETER;
        break;
    }
    return status;
}
