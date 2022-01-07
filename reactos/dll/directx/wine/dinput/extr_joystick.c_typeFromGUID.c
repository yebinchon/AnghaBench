
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFGUID ;
typedef int DWORD ;


 int DIEFT_CONDITION ;
 int DIEFT_CONSTANTFORCE ;
 int DIEFT_CUSTOMFORCE ;
 int DIEFT_PERIODIC ;
 int DIEFT_RAMPFORCE ;
 int GUID_ConstantForce ;
 int GUID_CustomForce ;
 int GUID_Damper ;
 int GUID_Friction ;
 int GUID_Inertia ;
 int GUID_RampForce ;
 int GUID_SawtoothDown ;
 int GUID_SawtoothUp ;
 int GUID_Sine ;
 int GUID_Spring ;
 int GUID_Square ;
 int GUID_Triangle ;
 scalar_t__ IsEqualGUID (int ,int *) ;
 int WARN (char*,int ) ;
 int _dump_dinput_GUID (int ) ;

DWORD typeFromGUID(REFGUID guid)
{
    if (IsEqualGUID(guid, &GUID_ConstantForce)) {
        return DIEFT_CONSTANTFORCE;
    } else if (IsEqualGUID(guid, &GUID_Square)
            || IsEqualGUID(guid, &GUID_Sine)
            || IsEqualGUID(guid, &GUID_Triangle)
            || IsEqualGUID(guid, &GUID_SawtoothUp)
            || IsEqualGUID(guid, &GUID_SawtoothDown)) {
        return DIEFT_PERIODIC;
    } else if (IsEqualGUID(guid, &GUID_RampForce)) {
        return DIEFT_RAMPFORCE;
    } else if (IsEqualGUID(guid, &GUID_Spring)
            || IsEqualGUID(guid, &GUID_Damper)
            || IsEqualGUID(guid, &GUID_Inertia)
            || IsEqualGUID(guid, &GUID_Friction)) {
        return DIEFT_CONDITION;
    } else if (IsEqualGUID(guid, &GUID_CustomForce)) {
        return DIEFT_CUSTOMFORCE;
    } else {
        WARN("GUID (%s) is not a known force type\n", _dump_dinput_GUID(guid));
        return 0;
    }
}
