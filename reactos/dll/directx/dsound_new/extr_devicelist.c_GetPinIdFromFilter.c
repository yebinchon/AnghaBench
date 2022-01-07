
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_3__ {size_t PinCount; scalar_t__* Pin; } ;
typedef TYPE_1__* LPFILTERINFO ;
typedef scalar_t__ BOOL ;


 scalar_t__ PIN_TYPE_PLAYBACK ;
 scalar_t__ PIN_TYPE_RECORDING ;
 size_t ULONG_MAX ;

ULONG
GetPinIdFromFilter(
    LPFILTERINFO Filter,
    BOOL bCapture,
    ULONG Offset)
{
    ULONG Index;

    for(Index = Offset; Index < Filter->PinCount; Index++)
    {
        if (Filter->Pin[Index] == PIN_TYPE_PLAYBACK && !bCapture)
            return Index;

        if (Filter->Pin[Index] == PIN_TYPE_RECORDING && bCapture)
            return Index;
    }
    return ULONG_MAX;
}
