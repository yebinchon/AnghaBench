
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int DDERR_INVALIDPARAMS ;


HRESULT
hr_ddraw_from_wined3d(HRESULT hr)
{
    switch(hr)
    {
        case 128: return DDERR_INVALIDPARAMS;
        default: return hr;
    }
}
