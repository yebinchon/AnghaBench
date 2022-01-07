
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cyIntegral; int cyMinChild; int cyMaxChild; } ;
typedef TYPE_1__ REBAR_BAND ;


 int max (int,int ) ;
 int min (int,int ) ;

__attribute__((used)) static int round_child_height(const REBAR_BAND *lpBand, int cyHeight)
{
    int cy = 0;
    if (lpBand->cyIntegral == 0)
        return cyHeight;
    cy = max(cyHeight - (int)lpBand->cyMinChild, 0);
    cy = lpBand->cyMinChild + (cy/lpBand->cyIntegral) * lpBand->cyIntegral;
    cy = min(cy, lpBand->cyMaxChild);
    return cy;
}
