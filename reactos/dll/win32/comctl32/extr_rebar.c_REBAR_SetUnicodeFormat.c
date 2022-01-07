
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bUnicode; int hwndSelf; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef scalar_t__ LRESULT ;
typedef scalar_t__ BOOL ;


 int TRACE (char*,char*,int ,char*) ;

__attribute__((used)) static inline LRESULT
REBAR_SetUnicodeFormat (REBAR_INFO *infoPtr, BOOL unicode)
{
    BOOL bTemp = infoPtr->bUnicode;

    TRACE("to %s hwnd=%p, was %s\n",
    unicode ? "TRUE" : "FALSE", infoPtr->hwndSelf,
   (bTemp) ? "TRUE" : "FALSE");

    infoPtr->bUnicode = unicode;

   return bTemp;
}
