
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; } ;
typedef int NMHDR ;
typedef TYPE_1__ LISTVIEW_INFO ;
typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int IsWindow (int ) ;
 int notify_hdr (TYPE_1__ const*,int ,int *) ;

__attribute__((used)) static inline BOOL notify(const LISTVIEW_INFO *infoPtr, INT code)
{
    NMHDR nmh;
    HWND hwnd = infoPtr->hwndSelf;
    notify_hdr(infoPtr, code, &nmh);
    return IsWindow(hwnd);
}
