
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DHGLRC ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int ) ;

BOOL sw_CopyContext(DHGLRC dhglrcSrc, DHGLRC dhglrcDst, UINT mask)
{
    FIXME("Software wglCopyContext is UNIMPLEMENTED, mask %lx.\n", mask);
    return FALSE;
}
