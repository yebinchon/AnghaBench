
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int FILE_SELECTED ;
 TYPE_1__* dents ;
 int ndents ;

__attribute__((used)) static void resetselind(void)
{
 int r = 0;

 for (; r < ndents; ++r)
  if (dents[r].flags & FILE_SELECTED)
   dents[r].flags &= ~FILE_SELECTED;
}
