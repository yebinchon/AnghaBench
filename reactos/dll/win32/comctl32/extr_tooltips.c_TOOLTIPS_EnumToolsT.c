
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ uNumTools; } ;
struct TYPE_7__ {scalar_t__ cbSize; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int BOOL ;


 int FALSE ;
 int TOOLTIPS_CopyInfoT (TYPE_2__ const*,scalar_t__,TYPE_1__*,int ) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;
 scalar_t__ TTTOOLINFOW_V1_SIZE ;

__attribute__((used)) static LRESULT
TOOLTIPS_EnumToolsT (const TOOLTIPS_INFO *infoPtr, UINT uIndex, TTTOOLINFOW *ti,
                     BOOL isW)
{
    if (!ti || ti->cbSize < TTTOOLINFOW_V1_SIZE)
 return FALSE;
    if (uIndex >= infoPtr->uNumTools)
 return FALSE;

    TRACE("index=%u\n", uIndex);

    TOOLTIPS_CopyInfoT (infoPtr, uIndex, ti, isW);

    return TRUE;
}
