
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* c; int len; int member_0; } ;
typedef TYPE_1__ smart_string ;
typedef size_t REDIS_SCAN_TYPE ;


 size_t TYPE_SCAN ;
 int redis_cmd_append_sstr (TYPE_1__*,char*,int) ;
 int redis_cmd_append_sstr_long (TYPE_1__*,long) ;
 int redis_cmd_init_sstr (TYPE_1__*,int,char*,int ) ;
 int strlen (char*) ;

int redis_fmt_scan_cmd(char **cmd, REDIS_SCAN_TYPE type, char *key, int key_len,
                       long it, char *pat, int pat_len, long count)
{
    static char *kw[] = {"SCAN","SSCAN","HSCAN","ZSCAN"};
    int argc;
    smart_string cmdstr = {0};


    argc = 1 + (type!=TYPE_SCAN) + (pat_len>0?2:0) + (count>0?2:0);

    redis_cmd_init_sstr(&cmdstr, argc, kw[type], strlen(kw[type]));


    if (type != TYPE_SCAN) {
        redis_cmd_append_sstr(&cmdstr, key, key_len);
    }


    redis_cmd_append_sstr_long(&cmdstr, it);


    if (count) {
        redis_cmd_append_sstr(&cmdstr,"COUNT",sizeof("COUNT")-1);
        redis_cmd_append_sstr_long(&cmdstr, count);
    }


    if (pat_len) {
        redis_cmd_append_sstr(&cmdstr,"MATCH",sizeof("MATCH")-1);
        redis_cmd_append_sstr(&cmdstr,pat,pat_len);
    }


    *cmd = cmdstr.c;
    return cmdstr.len;
}
