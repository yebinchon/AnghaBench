
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int smart_string ;


 int redis_cmd_append_sstr (int *,char*,int) ;
 int snprintf (char*,int,char*,double) ;

int
redis_cmd_append_sstr_dbl(smart_string *str, double value)
{
    char tmp[64];
    int len, retval;


    len = snprintf(tmp, sizeof(tmp), "%.16g", value);


    retval = redis_cmd_append_sstr(str, tmp, len);


    return retval;
}
