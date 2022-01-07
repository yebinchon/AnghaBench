
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ classoid; scalar_t__ objoid; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ CommentItem ;
typedef int Archive ;


 int collectComments (int *,TYPE_1__**) ;

__attribute__((used)) static int
findComments(Archive *fout, Oid classoid, Oid objoid,
    CommentItem **items)
{

 static CommentItem *comments = ((void*)0);
 static int ncomments = -1;

 CommentItem *middle = ((void*)0);
 CommentItem *low;
 CommentItem *high;
 int nmatch;


 if (ncomments < 0)
  ncomments = collectComments(fout, &comments);




 low = &comments[0];
 high = &comments[ncomments - 1];
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
