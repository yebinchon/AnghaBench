
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* rm_name; } ;


 int RM_MAX_ID ;
 TYPE_1__* RmgrDescTable ;
 int printf (char*,char*) ;

__attribute__((used)) static void
print_rmgr_list(void)
{
 int i;

 for (i = 0; i <= RM_MAX_ID; i++)
 {
  printf("%s\n", RmgrDescTable[i].rm_name);
 }
}
