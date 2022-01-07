
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
 int D3DSPSM_ABS ;
 int D3DSPSM_ABSNEG ;
 int D3DSPSM_BIAS ;
 int D3DSPSM_BIASNEG ;
 int D3DSPSM_COMP ;
 int D3DSPSM_DW ;
 int D3DSPSM_DZ ;
 int D3DSPSM_NEG ;
 int D3DSPSM_NONE ;
 int D3DSPSM_NOT ;
 int D3DSPSM_SIGN ;
 int D3DSPSM_SIGNNEG ;
 int D3DSPSM_X2 ;
 int D3DSPSM_X2NEG ;
 int FIXME (char*,int) ;

__attribute__((used)) static DWORD d3d9_srcmod(DWORD bwriter_srcmod)
{
    switch (bwriter_srcmod)
    {
        case 133: return D3DSPSM_NONE;
        case 134: return D3DSPSM_NEG;
        case 139: return D3DSPSM_BIAS;
        case 138: return D3DSPSM_BIASNEG;
        case 131: return D3DSPSM_SIGN;
        case 130: return D3DSPSM_SIGNNEG;
        case 137: return D3DSPSM_COMP;
        case 129: return D3DSPSM_X2;
        case 128: return D3DSPSM_X2NEG;
        case 135: return D3DSPSM_DZ;
        case 136: return D3DSPSM_DW;
        case 141: return D3DSPSM_ABS;
        case 140: return D3DSPSM_ABSNEG;
        case 132: return D3DSPSM_NOT;
        default:
            FIXME("Unhandled BWRITERSPSM token %#x.\n", bwriter_srcmod);
            return 0;
    }
}
