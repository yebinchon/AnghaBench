
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int BWRITERSP_WRITEMASK_0 ;
 int BWRITERSP_WRITEMASK_1 ;
 int BWRITERSP_WRITEMASK_2 ;
 int BWRITERSP_WRITEMASK_3 ;
 int D3DSP_WRITEMASK_0 ;
 int D3DSP_WRITEMASK_1 ;
 int D3DSP_WRITEMASK_2 ;
 int D3DSP_WRITEMASK_3 ;

__attribute__((used)) static DWORD d3d9_writemask(DWORD bwriter_writemask)
{
    DWORD ret = 0;

    if (bwriter_writemask & BWRITERSP_WRITEMASK_0) ret |= D3DSP_WRITEMASK_0;
    if (bwriter_writemask & BWRITERSP_WRITEMASK_1) ret |= D3DSP_WRITEMASK_1;
    if (bwriter_writemask & BWRITERSP_WRITEMASK_2) ret |= D3DSP_WRITEMASK_2;
    if (bwriter_writemask & BWRITERSP_WRITEMASK_3) ret |= D3DSP_WRITEMASK_3;

    return ret;
}
