
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ItemPointer ;
typedef int GinPostingList ;


 int SizeOfGinPostingList (int *) ;
 int ginPostingListDecodeAllSegments (int *,int ,int*) ;

ItemPointer
ginPostingListDecode(GinPostingList *plist, int *ndecoded)
{
 return ginPostingListDecodeAllSegments(plist,
             SizeOfGinPostingList(plist),
             ndecoded);
}
