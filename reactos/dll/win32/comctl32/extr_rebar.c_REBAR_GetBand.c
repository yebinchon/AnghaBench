
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ uNumBands; int bands; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int REBAR_BAND ;
typedef scalar_t__ INT ;


 int * DPA_GetPtr (int ,scalar_t__) ;
 int assert (int) ;

__attribute__((used)) static inline REBAR_BAND* REBAR_GetBand(const REBAR_INFO *infoPtr, INT i)
{
    assert(i >= 0 && i < infoPtr->uNumBands);
    return DPA_GetPtr(infoPtr->bands, i);
}
