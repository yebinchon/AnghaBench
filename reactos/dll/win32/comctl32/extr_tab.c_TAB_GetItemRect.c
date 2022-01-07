
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAB_INFO ;
typedef int RECT ;
typedef int INT ;
typedef int BOOL ;


 int TAB_InternalGetItemRect (int const*,int ,int *,int *) ;
 int TRACE (char*,int const*,int ,int *) ;

__attribute__((used)) static inline BOOL
TAB_GetItemRect(const TAB_INFO *infoPtr, INT item, RECT *rect)
{
  TRACE("(%p, %d, %p)\n", infoPtr, item, rect);
  return TAB_InternalGetItemRect(infoPtr, item, rect, ((void*)0));
}
