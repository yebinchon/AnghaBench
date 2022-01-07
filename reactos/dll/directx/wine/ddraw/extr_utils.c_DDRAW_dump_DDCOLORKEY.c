
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwColorSpaceHighValue; int dwColorSpaceLowValue; } ;
typedef TYPE_1__ DDCOLORKEY ;


 int TRACE (char*,int ,int ) ;

__attribute__((used)) static void
DDRAW_dump_DDCOLORKEY(const DDCOLORKEY *ddck)
{
    TRACE("Low : 0x%08x  - High : 0x%08x\n", ddck->dwColorSpaceLowValue, ddck->dwColorSpaceHighValue);
}
