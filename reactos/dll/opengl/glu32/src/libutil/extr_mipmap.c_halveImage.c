
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLushort ;
typedef int GLuint ;
typedef int GLint ;



__attribute__((used)) static void halveImage(GLint components, GLuint width, GLuint height,
         const GLushort *datain, GLushort *dataout)
{
    int i, j, k;
    int newwidth, newheight;
    int delta;
    GLushort *s;
    const GLushort *t;

    newwidth = width / 2;
    newheight = height / 2;
    delta = width * components;
    s = dataout;
    t = datain;


    for (i = 0; i < newheight; i++) {
 for (j = 0; j < newwidth; j++) {
     for (k = 0; k < components; k++) {
  s[0] = (t[0] + t[components] + t[delta] +
   t[delta+components] + 2) / 4;
  s++; t++;
     }
     t += components;
 }
 t += delta;
    }
}
