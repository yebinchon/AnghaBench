
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cy; } ;
struct TYPE_5__ {TYPE_1__ calcSize; } ;
typedef TYPE_2__ REBAR_INFO ;
typedef int LRESULT ;
typedef int INT ;


 int TRACE (char*,int ) ;

__attribute__((used)) static LRESULT
REBAR_GetBarHeight (const REBAR_INFO *infoPtr)
{
    INT nHeight;

    nHeight = infoPtr->calcSize.cy;

    TRACE("height = %d\n", nHeight);

    return nHeight;
}
