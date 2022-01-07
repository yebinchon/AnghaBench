
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;


 int WINED3DFMT_B8G8R8A8_UNORM ;
 int wined3d_dxt1_decode (int const*,int *,int ,int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void convert_dxt1_a8r8g8b8(const BYTE *src, BYTE *dst,
        DWORD pitch_in, DWORD pitch_out, unsigned int w, unsigned int h)
{
    wined3d_dxt1_decode(src, dst, pitch_in, pitch_out, WINED3DFMT_B8G8R8A8_UNORM, w, h);
}
