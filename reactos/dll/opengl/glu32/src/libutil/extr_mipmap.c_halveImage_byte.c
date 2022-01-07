
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLint ;
typedef int GLbyte ;


 int assert (int) ;
 int halve1Dimage_byte (int,int,int,int const*,int*,int,int,int) ;

__attribute__((used)) static void halveImage_byte(GLint components, GLuint width, GLuint height,
   const GLbyte *datain, GLbyte *dataout,
   GLint element_size,
   GLint ysize, GLint group_size)
{
    int i, j, k;
    int newwidth, newheight;
    int padBytes;
    GLbyte *s;
    const char *t;


    if (width == 1 || height == 1) {
       assert( !(width == 1 && height == 1) );
       halve1Dimage_byte(components,width,height,datain,dataout,
    element_size,ysize,group_size);
       return;
    }

    newwidth = width / 2;
    newheight = height / 2;
    padBytes = ysize - (width*group_size);
    s = dataout;
    t = (const char *)datain;


    for (i = 0; i < newheight; i++) {
 for (j = 0; j < newwidth; j++) {
     for (k = 0; k < components; k++) {
  s[0] = (*(const GLbyte*)t +
   *(const GLbyte*)(t+group_size) +
   *(const GLbyte*)(t+ysize) +
   *(const GLbyte*)(t+ysize+group_size) + 2) / 4;
  s++; t += element_size;
     }
     t += group_size;
 }
 t += padBytes;
 t += ysize;
    }
}
