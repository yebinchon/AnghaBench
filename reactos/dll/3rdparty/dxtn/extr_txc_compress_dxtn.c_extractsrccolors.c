
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLubyte ;
typedef int GLint ;
typedef int GLchan ;


 int CHAN_MAX ;

__attribute__((used)) static void extractsrccolors( GLubyte srcpixels[4][4][4], const GLchan *srcaddr,
                         GLint srcRowStride, GLint numxpixels, GLint numypixels, GLint comps)
{
   GLubyte i, j, c;
   const GLchan *curaddr;
   for (j = 0; j < numypixels; j++) {
      curaddr = srcaddr + j * srcRowStride * comps;
      for (i = 0; i < numxpixels; i++) {
         for (c = 0; c < comps; c++) {
            srcpixels[j][i][c] = *curaddr++ / (CHAN_MAX / 255);
         }
      }
   }
}
