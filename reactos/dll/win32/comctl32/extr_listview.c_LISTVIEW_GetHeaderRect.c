
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcHeader; } ;
typedef int * LPRECT ;
typedef int LISTVIEW_INFO ;
typedef int INT ;


 TYPE_1__* LISTVIEW_GetColumnInfo (int const*,int ) ;

__attribute__((used)) static inline void LISTVIEW_GetHeaderRect(const LISTVIEW_INFO *infoPtr, INT nSubItem, LPRECT lprc)
{
    *lprc = LISTVIEW_GetColumnInfo(infoPtr, nSubItem)->rcHeader;
}
