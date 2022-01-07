
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmd_name; } ;
typedef TYPE_1__ ENGINE_CMD_DEFN ;


 scalar_t__ int_ctrl_cmd_is_null (TYPE_1__ const*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int int_ctrl_cmd_by_name(const ENGINE_CMD_DEFN *defn, const char *s)
{
    int idx = 0;
    while (!int_ctrl_cmd_is_null(defn) && (strcmp(defn->cmd_name, s) != 0)) {
        idx++;
        defn++;
    }
    if (int_ctrl_cmd_is_null(defn))

        return -1;
    return idx;
}
