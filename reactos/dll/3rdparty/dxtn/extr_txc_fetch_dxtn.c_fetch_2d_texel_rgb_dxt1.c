
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLubyte ;
typedef int GLint ;


 int dxt135_decode_imageblock (int const*,int,int,int ,int *) ;

void fetch_2d_texel_rgb_dxt1(GLint srcRowStride, const GLubyte *pixdata,
                         GLint i, GLint j, GLvoid *texel)
{




   const GLubyte *blksrc = (pixdata + ((srcRowStride + 3) / 4 * (j / 4) + (i / 4)) * 8);
   dxt135_decode_imageblock(blksrc, (i&3), (j&3), 0, texel);
}
