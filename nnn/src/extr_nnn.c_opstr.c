
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_LEN_MAX ;
 int REPLACE_STR ;
 char* g_selpath ;
 int snprintf (char*,int ,char*,char*,int,char*) ;

__attribute__((used)) static void opstr(char *buf, char *op)
{

 snprintf(buf, CMD_LEN_MAX, "xargs -0 -a %s -%c {} %s {} .", g_selpath, REPLACE_STR, op);



}
