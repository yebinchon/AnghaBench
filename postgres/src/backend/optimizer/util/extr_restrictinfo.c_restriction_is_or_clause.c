
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * orclause; } ;
typedef TYPE_1__ RestrictInfo ;



bool
restriction_is_or_clause(RestrictInfo *restrictinfo)
{
 if (restrictinfo->orclause != ((void*)0))
  return 1;
 else
  return 0;
}
