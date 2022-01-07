
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int D3DSPDM_MSAMPCENTROID ;
 int D3DSPDM_PARTIALPRECISION ;
 int D3DSPDM_SATURATE ;
 int D3DSP_DSTMOD_MASK ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int add_modifier(char *buffer, DWORD param)
{
    char *buf = buffer;
    DWORD dst_mod = param & D3DSP_DSTMOD_MASK;

    if (dst_mod & D3DSPDM_SATURATE)
        buf += sprintf(buf, "_sat");
    if (dst_mod & D3DSPDM_PARTIALPRECISION)
        buf += sprintf(buf, "_pp");
    if (dst_mod & D3DSPDM_MSAMPCENTROID)
        buf += sprintf(buf, "_centroid");

    return buf - buffer;
}
