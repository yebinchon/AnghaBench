
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_conf_name_st {size_t cmd_count; struct ssl_conf_name_st* cmds; struct ssl_conf_name_st* arg; struct ssl_conf_name_st* cmd; struct ssl_conf_name_st* name; } ;
typedef int CONF_IMODULE ;


 int OPENSSL_free (struct ssl_conf_name_st*) ;
 struct ssl_conf_name_st* ssl_names ;
 size_t ssl_names_count ;

__attribute__((used)) static void ssl_module_free(CONF_IMODULE *md)
{
    size_t i, j;
    if (ssl_names == ((void*)0))
        return;
    for (i = 0; i < ssl_names_count; i++) {
        struct ssl_conf_name_st *tname = ssl_names + i;

        OPENSSL_free(tname->name);
        for (j = 0; j < tname->cmd_count; j++) {
            OPENSSL_free(tname->cmds[j].cmd);
            OPENSSL_free(tname->cmds[j].arg);
        }
        OPENSSL_free(tname->cmds);
    }
    OPENSSL_free(ssl_names);
    ssl_names = ((void*)0);
    ssl_names_count = 0;
}
