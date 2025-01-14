
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLushort ;
typedef int GLuint ;
typedef int GLshort ;
typedef int GLint ;


 scalar_t__ __GLU_SWAP_2_BYTES (char const*) ;
 int assert (int) ;
 int halve1Dimage_short (int,int,int,int const*,int*,int,int,int,int) ;

__attribute__((used)) static void halveImage_short(GLint components, GLuint width, GLuint height,
   const GLshort *datain, GLshort *dataout,
   GLint element_size, GLint ysize, GLint group_size,
   GLint myswap_bytes)
{
    int i, j, k;
    int newwidth, newheight;
    int padBytes;
    GLshort *s;
    const char *t;


    if (width == 1 || height == 1) {
       assert( !(width == 1 && height == 1) );
       halve1Dimage_short(components,width,height,datain,dataout,
     element_size,ysize,group_size, myswap_bytes);
       return;
    }

    newwidth = width / 2;
    newheight = height / 2;
    padBytes = ysize - (width*group_size);
    s = dataout;
    t = (const char *)datain;


    if (!myswap_bytes)
    for (i = 0; i < newheight; i++) {
 for (j = 0; j < newwidth; j++) {
     for (k = 0; k < components; k++) {
  s[0] = (*(const GLshort*)t +
   *(const GLshort*)(t+group_size) +
   *(const GLshort*)(t+ysize) +
   *(const GLshort*)(t+ysize+group_size) + 2) / 4;
  s++; t += element_size;
     }
     t += group_size;
 }
 t += padBytes;
 t += ysize;
    }
    else
    for (i = 0; i < newheight; i++) {
 for (j = 0; j < newwidth; j++) {
     for (k = 0; k < components; k++) {
  GLushort b;
  GLint buf;
  b = __GLU_SWAP_2_BYTES(t);
  buf = *(const GLshort*)&b;
  b = __GLU_SWAP_2_BYTES(t+group_size);
  buf += *(const GLshort*)&b;
  b = __GLU_SWAP_2_BYTES(t+ysize);
  buf += *(const GLshort*)&b;
  b = __GLU_SWAP_2_BYTES(t+ysize+group_size);
  buf += *(const GLshort*)&b;
  s[0] = (GLshort)((buf+2)/4);
  s++; t += element_size;
     }
     t += group_size;
 }
 t += padBytes;
 t += ysize;
    }
}
