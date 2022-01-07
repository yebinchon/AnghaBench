
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_ulong ;
typedef int zend_string ;
typedef int smart_string ;
typedef int kbuf ;


 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int redis_cmd_append_sstr (int *,char*,int) ;
 int snprintf (char*,int,char*,long) ;

int redis_cmd_append_sstr_arrkey(smart_string *cmd, zend_string *kstr, zend_ulong idx)
{
    char *arg, kbuf[128];
    int len;

    if (kstr) {
        len = ZSTR_LEN(kstr);
        arg = ZSTR_VAL(kstr);
    } else {
        len = snprintf(kbuf, sizeof(kbuf), "%ld", (long)idx);
        arg = (char*)kbuf;
    }

    return redis_cmd_append_sstr(cmd, arg, len);
}
