
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPLVITEMW ;
typedef int LISTVIEW_INFO ;
typedef int BOOL ;


 int LISTVIEW_GetItemT (int const*,int ,int ) ;
 int TRUE ;

__attribute__((used)) static inline BOOL LISTVIEW_GetItemW(const LISTVIEW_INFO *infoPtr, LPLVITEMW lpLVItem)
{
    return LISTVIEW_GetItemT(infoPtr, lpLVItem, TRUE);
}
