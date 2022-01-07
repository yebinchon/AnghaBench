
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bUnicode; int hwndSelf; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef scalar_t__ LRESULT ;


 int TRACE (char*,char*,int ) ;

__attribute__((used)) static inline LRESULT
REBAR_GetUnicodeFormat (const REBAR_INFO *infoPtr)
{
    TRACE("%s hwnd=%p\n",
   infoPtr->bUnicode ? "TRUE" : "FALSE", infoPtr->hwndSelf);

    return infoPtr->bUnicode;
}
