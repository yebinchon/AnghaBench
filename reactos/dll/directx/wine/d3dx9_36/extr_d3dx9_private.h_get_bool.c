
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int D3DXPARAMETER_TYPE ;
typedef int BOOL ;






 int FALSE ;

__attribute__((used)) static inline BOOL get_bool(D3DXPARAMETER_TYPE type, const void *data)
{
    switch (type)
    {
        case 130:
        case 129:
        case 131:
            return !!*(DWORD *)data;

        case 128:
            return *(BOOL *)data;

        default:
            return FALSE;
    }
}
