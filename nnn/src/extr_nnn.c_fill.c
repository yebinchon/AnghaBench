
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int regex_t ;
struct TYPE_4__ {char const* str; int * regex; } ;
typedef TYPE_1__ fltrexp_t ;
struct TYPE_5__ {int name; } ;


 TYPE_3__* dents ;
 scalar_t__ filterfn (TYPE_1__*,int ) ;
 int ndents ;
 int swap_ent (int,int) ;

__attribute__((used)) static int fill(const char *fltr, regex_t *re)
{
 int count = 0;
 fltrexp_t fltrexp = { .regex = re, .str = fltr };

 for (; count < ndents; ++count) {
  if (filterfn(&fltrexp, dents[count].name) == 0) {
   if (count != --ndents) {
    swap_ent(count, ndents);
    --count;
   }

   continue;
  }
 }

 return ndents;
}
