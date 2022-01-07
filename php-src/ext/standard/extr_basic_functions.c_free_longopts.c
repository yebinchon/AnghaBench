
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char opt_char; int * opt_name; } ;
typedef TYPE_1__ opt_struct ;


 int efree (char*) ;

__attribute__((used)) static void free_longopts(opt_struct *longopts)
{
 opt_struct *p;

 if (longopts) {
  for (p = longopts; p && p->opt_char != '-'; p++) {
   if (p->opt_name != ((void*)0)) {
    efree((char *)(p->opt_name));
   }
  }
 }
}
