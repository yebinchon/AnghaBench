
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dwObj; scalar_t__ dwHow; } ;
typedef TYPE_1__* LPCDIPROPHEADER ;


 scalar_t__ DIPH_BYID ;
 scalar_t__ DIPH_BYOFFSET ;
 scalar_t__ DIPH_DEVICE ;
 int TRACE (char*,char*) ;
 scalar_t__ TRACE_ON (int ) ;
 int dinput ;

void _dump_DIPROPHEADER(LPCDIPROPHEADER diph) {
    if (TRACE_ON(dinput)) {
        TRACE("  - dwObj = 0x%08x\n", diph->dwObj);
        TRACE("  - dwHow = %s\n",
            ((diph->dwHow == DIPH_DEVICE) ? "DIPH_DEVICE" :
            ((diph->dwHow == DIPH_BYOFFSET) ? "DIPH_BYOFFSET" :
            ((diph->dwHow == DIPH_BYID)) ? "DIPH_BYID" : "unknown")));
    }
}
