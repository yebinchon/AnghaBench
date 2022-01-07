
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int redraw; } ;
typedef TYPE_1__ LISTVIEW_INFO ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_redrawing(const LISTVIEW_INFO *infoPtr)
{
    return infoPtr->redraw;
}
