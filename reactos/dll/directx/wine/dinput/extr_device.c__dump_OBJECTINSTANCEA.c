
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwFlags; int tszName; int dwType; int dwOfs; int guidType; } ;
typedef TYPE_1__ DIDEVICEOBJECTINSTANCEA ;


 int TRACE (char*,int ,int ,int ,int ,int ,int ) ;
 int _dump_dinput_GUID (int *) ;
 int debugstr_guid (int *) ;

void _dump_OBJECTINSTANCEA(const DIDEVICEOBJECTINSTANCEA *ddoi) {
    TRACE("    - enumerating : %s ('%s') - %2d - 0x%08x - %s - 0x%x\n",
        debugstr_guid(&ddoi->guidType), _dump_dinput_GUID(&ddoi->guidType), ddoi->dwOfs, ddoi->dwType, ddoi->tszName, ddoi->dwFlags);
}
