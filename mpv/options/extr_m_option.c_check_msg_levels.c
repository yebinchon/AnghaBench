
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int M_OPT_INVALID ;
 int mp_err (struct mp_log*,char*,char*) ;
 scalar_t__ mp_msg_find_level (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int check_msg_levels(struct mp_log *log, char **list)
{
    for (int n = 0; list && list[n * 2 + 0]; n++) {
        char *level = list[n * 2 + 1];
        if (mp_msg_find_level(level) < 0 && strcmp(level, "no") != 0) {
            mp_err(log, "Invalid message level '%s'\n", level);
            return M_OPT_INVALID;
        }
    }
    return 1;
}
