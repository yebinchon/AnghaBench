
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_3__ {int pure_cmds; } ;
typedef TYPE_1__ RedisArray ;


 int efree (char*) ;
 char* emalloc (int) ;
 char toupper (char const) ;
 int zend_hash_str_exists (int ,char*,int) ;

zend_bool
ra_is_write_cmd(RedisArray *ra, const char *cmd, int cmd_len) {

    zend_bool ret;
    int i;
    char *cmd_up = emalloc(1 + cmd_len);

    for(i = 0; i < cmd_len; ++i)
        cmd_up[i] = toupper(cmd[i]);
    cmd_up[cmd_len] = 0;

    ret = zend_hash_str_exists(ra->pure_cmds, cmd_up, cmd_len);

    efree(cmd_up);
    return !ret;
}
