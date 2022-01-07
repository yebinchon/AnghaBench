
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int D3DXPARAMETER_TYPE ;
typedef int BOOL ;





 int get_bool (int,void const*) ;
 float get_float (int,void const*) ;
 int get_int (int,void const*) ;

__attribute__((used)) static inline void set_number(void *outdata, D3DXPARAMETER_TYPE outtype, const void *indata, D3DXPARAMETER_TYPE intype)
{
    if (outtype == intype)
    {
        *(DWORD *)outdata = *(DWORD *)indata;
        return;
    }

    switch (outtype)
    {
        case 129:
            *(float *)outdata = get_float(intype, indata);
            break;

        case 130:
            *(BOOL *)outdata = get_bool(intype, indata);
            break;

        case 128:
            *(int *)outdata = get_int(intype, indata);
            break;

        default:
            *(DWORD *)outdata = 0;
            break;
    }
}
