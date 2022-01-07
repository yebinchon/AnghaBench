
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;



__attribute__((used)) static void
zapallsubs(regmatch_t *p,
     size_t n)
{
 size_t i;

 for (i = n - 1; i > 0; i--)
 {
  p[i].rm_so = -1;
  p[i].rm_eo = -1;
 }
}
