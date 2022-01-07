
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cyChild; scalar_t__ hwndChild; int cyHeader; int cyMinBand; } ;
typedef int REBAR_INFO ;
typedef TYPE_1__ REBAR_BAND ;


 scalar_t__ REBARSPACE (TYPE_1__*) ;
 scalar_t__ REBAR_NO_CHILD_HEIGHT ;
 int max (int ,scalar_t__) ;

__attribute__((used)) static void update_min_band_height(const REBAR_INFO *infoPtr, REBAR_BAND *lpBand)
{
    lpBand->cyMinBand = max(lpBand->cyHeader,
        (lpBand->hwndChild ? lpBand->cyChild + REBARSPACE(lpBand) : REBAR_NO_CHILD_HEIGHT));
}
