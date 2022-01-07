
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
 int D3DSPC_EQ ;
 int D3DSPC_GE ;
 int D3DSPC_GT ;
 int D3DSPC_LE ;
 int D3DSPC_LT ;
 int D3DSPC_NE ;
 int FIXME (char*,int) ;

__attribute__((used)) static DWORD d3d9_comparetype(DWORD asmshader_comparetype)
{
    switch (asmshader_comparetype)
    {
        case 131: return D3DSPC_GT;
        case 133: return D3DSPC_EQ;
        case 132: return D3DSPC_GE;
        case 129: return D3DSPC_LT;
        case 128: return D3DSPC_NE;
        case 130: return D3DSPC_LE;
        default:
            FIXME("Unexpected BWRITER_COMPARISON type %#x.\n", asmshader_comparetype);
            return 0;
    }
}
