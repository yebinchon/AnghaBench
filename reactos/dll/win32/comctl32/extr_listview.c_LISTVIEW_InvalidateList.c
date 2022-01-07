
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LISTVIEW_INFO ;


 int LISTVIEW_InvalidateRect (int const*,int *) ;

__attribute__((used)) static inline void LISTVIEW_InvalidateList(const LISTVIEW_INFO *infoPtr)
{
    LISTVIEW_InvalidateRect(infoPtr, ((void*)0));
}
