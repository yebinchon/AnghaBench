
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef int FullTransactionId ;


 scalar_t__ FullTransactionIdPrecedes (int ,int ) ;
 int GetFullRecentGlobalXmin () ;
 int GistPageGetDeleteXid (int ) ;
 scalar_t__ GistPageIsDeleted (int ) ;
 scalar_t__ PageIsNew (int ) ;

bool
gistPageRecyclable(Page page)
{
 if (PageIsNew(page))
  return 1;
 if (GistPageIsDeleted(page))
 {
  FullTransactionId deletexid_full = GistPageGetDeleteXid(page);
  FullTransactionId recentxmin_full = GetFullRecentGlobalXmin();

  if (FullTransactionIdPrecedes(deletexid_full, recentxmin_full))
   return 1;
 }
 return 0;
}
