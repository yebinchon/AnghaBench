
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int D3DXFERR_BADFILEFLOATSIZE ;
 int D3DXFERR_BADFILETYPE ;
 int D3DXFERR_BADFILEVERSION ;
 int D3DXFERR_BADVALUE ;
 int D3DXFERR_PARSEERROR ;





 int E_FAIL ;
 int FIXME (char*,int) ;

__attribute__((used)) static HRESULT error_dxfile_to_d3dxfile(HRESULT error)
{
    switch (error)
    {
        case 131:
            return D3DXFERR_BADFILETYPE;
        case 130:
            return D3DXFERR_BADFILEVERSION;
        case 132:
            return D3DXFERR_BADFILEFLOATSIZE;
        case 128:
            return D3DXFERR_PARSEERROR;
        case 129:
            return D3DXFERR_BADVALUE;
        default:
            FIXME("Cannot map error %#x\n", error);
            return E_FAIL;
    }
}
