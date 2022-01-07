
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uNumRows; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int LRESULT ;


 int TRACE (char*,int ) ;

__attribute__((used)) static inline LRESULT
REBAR_GetRowCount (const REBAR_INFO *infoPtr)
{
    TRACE("%u\n", infoPtr->uNumRows);

    return infoPtr->uNumRows;
}
