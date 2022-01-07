
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ itemsarr; } ;
typedef TYPE_1__ ResourceArray ;


 int pfree (scalar_t__) ;

__attribute__((used)) static void
ResourceArrayFree(ResourceArray *resarr)
{
 if (resarr->itemsarr)
  pfree(resarr->itemsarr);
}
