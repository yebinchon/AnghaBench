
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmd ;


 int getpid () ;
 int snprintf (char*,int,char*,int) ;
 int system (char*) ;

__attribute__((used)) static void dump_maps(void)
{
 char cmd[32];

 snprintf(cmd, sizeof(cmd), "cat /proc/%d/maps", getpid());
 system(cmd);
}
