
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_ctx {int log; struct cmd_bind_section* cmd_bind_sections; } ;
struct cmd_bind_section {int num_binds; TYPE_1__* binds; struct cmd_bind_section* next; } ;
typedef int mp_cmd_t ;
struct TYPE_2__ {int* keys; scalar_t__ num_keys; } ;


 int MP_INFO (struct input_ctx*,char*,char*) ;
 int MP_KEY_CLOSE_WIN ;
 int MP_WARN (struct input_ctx*,char*) ;
 int append_bind_info (struct input_ctx*,char**,TYPE_1__*) ;
 char* mp_input_get_key_combo_name (int*,int) ;
 int * mp_input_parse_cmd_strv (int ,char const**) ;
 char* talloc_asprintf (int *,char*,char*) ;
 char* talloc_asprintf_append (char*,char*,...) ;
 int talloc_free (char*) ;

__attribute__((used)) static mp_cmd_t *handle_test(struct input_ctx *ictx, int code)
{
    if (code == MP_KEY_CLOSE_WIN) {
        MP_WARN(ictx,
            "CLOSE_WIN was received. This pseudo key can be remapped too,\n"
            "but --input-test will always quit when receiving it.\n");
        const char *args[] = {"quit", ((void*)0)};
        mp_cmd_t *res = mp_input_parse_cmd_strv(ictx->log, args);
        return res;
    }

    char *key_buf = mp_input_get_key_combo_name(&code, 1);
    char *msg = talloc_asprintf(((void*)0), "Key %s is bound to:\n", key_buf);
    talloc_free(key_buf);

    int count = 0;
    for (struct cmd_bind_section *bs = ictx->cmd_bind_sections;
         bs; bs = bs->next)
    {
        for (int i = 0; i < bs->num_binds; i++) {
            if (bs->binds[i].num_keys && bs->binds[i].keys[0] == code) {
                count++;
                if (count > 1)
                    msg = talloc_asprintf_append(msg, "\n");
                msg = talloc_asprintf_append(msg, "%d. ", count);
                append_bind_info(ictx, &msg, &bs->binds[i]);
            }
        }
    }

    if (!count)
        msg = talloc_asprintf_append(msg, "(nothing)");

    MP_INFO(ictx, "%s\n", msg);
    const char *args[] = {"show-text", msg, ((void*)0)};
    mp_cmd_t *res = mp_input_parse_cmd_strv(ictx->log, args);
    talloc_free(msg);
    return res;
}
