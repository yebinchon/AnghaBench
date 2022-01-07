
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int Page ;


 int BRIN_EVACUATE_PAGE ;
 int BRIN_IS_REGULAR_PAGE (int ) ;
 int BrinPageFlags (int ) ;
 int PageGetFreeSpace (int ) ;

__attribute__((used)) static Size
br_page_get_freespace(Page page)
{
 if (!BRIN_IS_REGULAR_PAGE(page) ||
  (BrinPageFlags(page) & BRIN_EVACUATE_PAGE) != 0)
  return 0;
 else
  return PageGetFreeSpace(page);
}
