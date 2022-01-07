
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * freelist; } ;
struct TYPE_6__ {scalar_t__ npages; int next; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__ FreePageSpanLeader ;
typedef TYPE_2__ FreePageManager ;


 int FPM_NUM_FREELISTS ;
 char* fpm_segment_base (TYPE_2__*) ;
 TYPE_1__* relptr_access (char*,int ) ;
 int relptr_is_null (int ) ;

__attribute__((used)) static Size
FreePageManagerLargestContiguous(FreePageManager *fpm)
{
 char *base;
 Size largest;

 base = fpm_segment_base(fpm);
 largest = 0;
 if (!relptr_is_null(fpm->freelist[FPM_NUM_FREELISTS - 1]))
 {
  FreePageSpanLeader *candidate;

  candidate = relptr_access(base, fpm->freelist[FPM_NUM_FREELISTS - 1]);
  do
  {
   if (candidate->npages > largest)
    largest = candidate->npages;
   candidate = relptr_access(base, candidate->next);
  } while (candidate != ((void*)0));
 }
 else
 {
  Size f = FPM_NUM_FREELISTS - 1;

  do
  {
   --f;
   if (!relptr_is_null(fpm->freelist[f]))
   {
    largest = f + 1;
    break;
   }
  } while (f > 0);
 }

 return largest;
}
