
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef int GLchan ;


 size_t ACOMP ;
 scalar_t__ EXP4TO8 (int const) ;
 int UBYTE_TO_CHAN (int) ;
 int dxt135_decode_imageblock (int const*,int,int,int,int *) ;

void fetch_2d_texel_rgba_dxt3(GLint srcRowStride, const GLubyte *pixdata,
                         GLint i, GLint j, GLvoid *texel) {





   GLchan *rgba = (GLchan *) texel;
   const GLubyte *blksrc = (pixdata + ((srcRowStride + 3) / 4 * (j / 4) + (i / 4)) * 16);
   const GLubyte anibble = (blksrc[((j&3) * 4 + (i&3)) / 2] >> (4 * (i&1))) & 0xf;
   dxt135_decode_imageblock(blksrc + 8, (i&3), (j&3), 2, texel);
   rgba[ACOMP] = UBYTE_TO_CHAN( (GLubyte)(EXP4TO8(anibble)) );


}
