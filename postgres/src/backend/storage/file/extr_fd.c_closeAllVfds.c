
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Index ;


 int Assert (int ) ;
 int FileIsNotOpen (int) ;
 int LruDelete (int) ;
 int SizeVfdCache ;

void
closeAllVfds(void)
{
 Index i;

 if (SizeVfdCache > 0)
 {
  Assert(FileIsNotOpen(0));
  for (i = 1; i < SizeVfdCache; i++)
  {
   if (!FileIsNotOpen(i))
    LruDelete(i);
  }
 }
}
