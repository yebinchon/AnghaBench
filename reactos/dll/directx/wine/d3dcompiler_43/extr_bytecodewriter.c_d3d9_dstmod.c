
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int BWRITERSPDM_MSAMPCENTROID ;
 int BWRITERSPDM_PARTIALPRECISION ;
 int BWRITERSPDM_SATURATE ;
 int D3DSPDM_MSAMPCENTROID ;
 int D3DSPDM_PARTIALPRECISION ;
 int D3DSPDM_SATURATE ;

__attribute__((used)) static DWORD d3d9_dstmod(DWORD bwriter_mod)
{
    DWORD ret = 0;

    if (bwriter_mod & BWRITERSPDM_SATURATE) ret |= D3DSPDM_SATURATE;
    if (bwriter_mod & BWRITERSPDM_PARTIALPRECISION) ret |= D3DSPDM_PARTIALPRECISION;
    if (bwriter_mod & BWRITERSPDM_MSAMPCENTROID) ret |= D3DSPDM_MSAMPCENTROID;

    return ret;
}
