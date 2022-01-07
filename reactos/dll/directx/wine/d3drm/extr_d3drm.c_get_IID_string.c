
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GUID ;


 int IID_IDirect3DRMFrame ;
 int IID_IDirect3DRMFrame2 ;
 int IID_IDirect3DRMFrame3 ;
 int IID_IDirect3DRMMeshBuilder ;
 int IID_IDirect3DRMMeshBuilder2 ;
 int IID_IDirect3DRMMeshBuilder3 ;
 scalar_t__ IsEqualGUID (int const*,int *) ;

__attribute__((used)) static const char* get_IID_string(const GUID* guid)
{
    if (IsEqualGUID(guid, &IID_IDirect3DRMFrame))
        return "IID_IDirect3DRMFrame";
    else if (IsEqualGUID(guid, &IID_IDirect3DRMFrame2))
        return "IID_IDirect3DRMFrame2";
    else if (IsEqualGUID(guid, &IID_IDirect3DRMFrame3))
        return "IID_IDirect3DRMFrame3";
    else if (IsEqualGUID(guid, &IID_IDirect3DRMMeshBuilder))
        return "IID_IDirect3DRMMeshBuilder";
    else if (IsEqualGUID(guid, &IID_IDirect3DRMMeshBuilder2))
        return "IID_IDirect3DRMMeshBuilder2";
    else if (IsEqualGUID(guid, &IID_IDirect3DRMMeshBuilder3))
        return "IID_IDirect3DRMMeshBuilder3";

    return "?";
}
