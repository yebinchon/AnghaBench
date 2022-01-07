
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_3__ {scalar_t__ nNotifyFormat; } ;
typedef int LRESULT ;
typedef TYPE_1__ HEADER_INFO ;
typedef int BOOL ;


 scalar_t__ NFR_ANSI ;
 scalar_t__ NFR_UNICODE ;

__attribute__((used)) static inline LRESULT
HEADER_SetUnicodeFormat (HEADER_INFO *infoPtr, WPARAM wParam)
{
    BOOL bTemp = (infoPtr->nNotifyFormat == NFR_UNICODE);

    infoPtr->nNotifyFormat = ((BOOL)wParam ? NFR_UNICODE : NFR_ANSI);

    return bTemp;
}
