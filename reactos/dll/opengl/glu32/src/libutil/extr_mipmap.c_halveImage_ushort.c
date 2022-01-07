
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLushort ;
typedef int GLuint ;
typedef int GLint ;


 int __GLU_SWAP_2_BYTES (char const*) ;
 int assert (int) ;
 int halve1Dimage_ushort (int,int,int,int const*,int*,int,int,int,int) ;

__attribute__((used)) static void halveImage_ushort(GLint components, GLuint width, GLuint height,
   const GLushort *datain, GLushort *dataout,
   GLint element_size, GLint ysize, GLint group_size,
   GLint myswap_bytes)
{
    int i, j, k;
    int newwidth, newheight;
    int padBytes;
    GLushort *s;
    const char *t;


    if (width == 1 || height == 1) {
       assert( !(width == 1 && height == 1) );
       halve1Dimage_ushort(components,width,height,datain,dataout,
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
  s[0] = (*(const GLushort*)t +
   *(const GLushort*)(t+group_size) +
   *(const GLushort*)(t+ysize) +
   *(const GLushort*)(t+ysize+group_size) + 2) / 4;
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
  s[0] = (__GLU_SWAP_2_BYTES(t) +
   __GLU_SWAP_2_BYTES(t+group_size) +
   __GLU_SWAP_2_BYTES(t+ysize) +
   __GLU_SWAP_2_BYTES(t+ysize+group_size)+ 2)/4;
  s++; t += element_size;
     }
     t += group_size;
 }
 t += padBytes;
 t += ysize;
    }
}
