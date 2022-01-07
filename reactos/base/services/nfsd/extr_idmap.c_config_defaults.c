
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_config {int dummy; } ;
struct config_option {int offset; scalar_t__ type; int max_len; int def; int key; } ;
typedef int UINT ;


 int ARRAYSIZE (struct config_option*) ;
 int ERROR_BUFFER_OVERFLOW ;
 int ERROR_INVALID_PARAMETER ;
 scalar_t__ FAILED (int ) ;
 int NO_ERROR ;
 int StringCchCopyA (char*,int ,int ) ;
 scalar_t__ TYPE_INT ;
 int eprintf (char*,int ,int ,...) ;
 struct config_option* g_options ;
 int parse_uint (int ,int *) ;

__attribute__((used)) static int config_defaults(
    struct idmap_config *config)
{
    const struct config_option *option;
    const int count = ARRAYSIZE(g_options);
    char *dst;
    int i, status = NO_ERROR;

    for (i = 0; i < count; i++) {
        option = &g_options[i];
        dst = (char*)config + option->offset;

        if (option->type == TYPE_INT) {
            if (!parse_uint(option->def, (UINT*)dst)) {
                status = ERROR_INVALID_PARAMETER;
                eprintf("failed to parse default value of %s=\"%s\": "
                    "expected a number\n", option->key, option->def);
                break;
            }
        } else {
            if (FAILED(StringCchCopyA(dst, option->max_len, option->def))) {
                status = ERROR_BUFFER_OVERFLOW;
                eprintf("failed to parse default value of %s=\"%s\": "
                    "buffer overflow > %u\n", option->key, option->def,
                    option->max_len);
                break;
            }
        }
    }
    return status;
}
