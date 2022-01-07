
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int GIN_EXCLUSIVE ;
 int GIN_SHARE ;
 int GIN_UNLOCK ;
 scalar_t__ GinPageIsLeaf (int ) ;
 int LockBuffer (int ,int) ;

int
ginTraverseLock(Buffer buffer, bool searchMode)
{
 Page page;
 int access = GIN_SHARE;

 LockBuffer(buffer, GIN_SHARE);
 page = BufferGetPage(buffer);
 if (GinPageIsLeaf(page))
 {
  if (searchMode == 0)
  {

   LockBuffer(buffer, GIN_UNLOCK);
   LockBuffer(buffer, GIN_EXCLUSIVE);


   if (!GinPageIsLeaf(page))
   {

    LockBuffer(buffer, GIN_UNLOCK);
    LockBuffer(buffer, GIN_SHARE);
   }
   else
    access = GIN_EXCLUSIVE;
  }
 }

 return access;
}
