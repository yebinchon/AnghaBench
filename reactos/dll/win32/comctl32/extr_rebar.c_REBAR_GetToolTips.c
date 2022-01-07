
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndToolTip; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int LRESULT ;



__attribute__((used)) static inline LRESULT
REBAR_GetToolTips (const REBAR_INFO *infoPtr)
{
    return (LRESULT)infoPtr->hwndToolTip;
}
