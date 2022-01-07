
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; char* rep; } ;


 size_t EOL_LIST_LEN ;
 TYPE_1__* phpdbg_eol_list ;

char *phpdbg_eol_rep(int id)
{
 size_t i = 0;

 while (i < EOL_LIST_LEN) {

  if (id == phpdbg_eol_list[i].id) {
   return phpdbg_eol_list[i].rep;
  }

  i++;
 }

 return ((void*)0);
}
