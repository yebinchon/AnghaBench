
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int time; int * type; } ;
struct TYPE_5__ {int retrycount; scalar_t__ justid; scalar_t__ force; TYPE_1__ idle; } ;
typedef TYPE_2__ xclaimOptions ;
typedef int smart_string ;


 int REDIS_CMD_APPEND_SSTR_STATIC (int *,char*) ;
 int redis_cmd_append_sstr (int *,int *,int ) ;
 int redis_cmd_append_sstr_i64 (int *,int) ;
 int redis_cmd_append_sstr_long (int *,int) ;
 int strlen (int *) ;

__attribute__((used)) static void append_xclaim_options(smart_string *cmd, xclaimOptions *opt) {

    if (opt->idle.type != ((void*)0) && opt->idle.time != -1) {
        redis_cmd_append_sstr(cmd, opt->idle.type, strlen(opt->idle.type));
        redis_cmd_append_sstr_i64(cmd, opt->idle.time);
    }


    if (opt->retrycount != -1) {
        REDIS_CMD_APPEND_SSTR_STATIC(cmd, "RETRYCOUNT");
        redis_cmd_append_sstr_long(cmd, opt->retrycount);
    }


    if (opt->force)
        REDIS_CMD_APPEND_SSTR_STATIC(cmd, "FORCE");
    if (opt->justid)
        REDIS_CMD_APPEND_SSTR_STATIC(cmd, "JUSTID");
}
