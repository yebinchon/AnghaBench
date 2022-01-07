
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ wID; } ;
struct TYPE_5__ {int uNumBands; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int LRESULT ;


 TYPE_3__* REBAR_GetBand (TYPE_1__ const*,scalar_t__) ;
 int TRACE (char*,scalar_t__,...) ;

__attribute__((used)) static LRESULT
REBAR_IdToIndex (const REBAR_INFO *infoPtr, UINT uId)
{
    UINT i;

    if (infoPtr->uNumBands < 1)
 return -1;

    for (i = 0; i < infoPtr->uNumBands; i++) {
 if (REBAR_GetBand(infoPtr, i)->wID == uId) {
     TRACE("id %u is band %u found!\n", uId, i);
     return i;
 }
    }

    TRACE("id %u is not found\n", uId);
    return -1;
}
