
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uVItemPadding_s; int uHItemPadding_s; } ;
typedef TYPE_1__ TAB_INFO ;
typedef int LRESULT ;
typedef int LPARAM ;


 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int TRACE (char*,TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline LRESULT
TAB_SetPadding (TAB_INFO *infoPtr, LPARAM lParam)
{
    TRACE("(%p %d %d)\n", infoPtr, LOWORD(lParam), HIWORD(lParam));
    infoPtr->uHItemPadding_s = LOWORD(lParam);
    infoPtr->uVItemPadding_s = HIWORD(lParam);

    return 0;
}
