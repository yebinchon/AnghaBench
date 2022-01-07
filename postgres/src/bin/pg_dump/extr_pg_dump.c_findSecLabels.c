
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ classoid; scalar_t__ objoid; } ;
typedef TYPE_1__ SecLabelItem ;
typedef scalar_t__ Oid ;
typedef int Archive ;


 int collectSecLabels (int *,TYPE_1__**) ;

__attribute__((used)) static int
findSecLabels(Archive *fout, Oid classoid, Oid objoid, SecLabelItem **items)
{

 static SecLabelItem *labels = ((void*)0);
 static int nlabels = -1;

 SecLabelItem *middle = ((void*)0);
 SecLabelItem *low;
 SecLabelItem *high;
 int nmatch;


 if (nlabels < 0)
  nlabels = collectSecLabels(fout, &labels);

 if (nlabels <= 0)
 {
  *items = ((void*)0);
  return 0;
 }




 low = &labels[0];
 high = &labels[nlabels - 1];
 while (low <= high)
 {
  middle = low + (high - low) / 2;

  if (classoid < middle->classoid)
   high = middle - 1;
  else if (classoid > middle->classoid)
   low = middle + 1;
  else if (objoid < middle->objoid)
   high = middle - 1;
  else if (objoid > middle->objoid)
   low = middle + 1;
  else
   break;
 }

 if (low > high)
 {
  *items = ((void*)0);
  return 0;
 }






 nmatch = 1;
 while (middle > low)
 {
  if (classoid != middle[-1].classoid ||
   objoid != middle[-1].objoid)
   break;
  middle--;
  nmatch++;
 }

 *items = middle;

 middle += nmatch;
 while (middle <= high)
 {
  if (classoid != middle->classoid ||
   objoid != middle->objoid)
   break;
  middle++;
  nmatch++;
 }

 return nmatch;
}
