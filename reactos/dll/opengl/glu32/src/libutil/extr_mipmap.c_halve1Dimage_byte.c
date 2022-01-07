
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLint ;
typedef int GLbyte ;


 int assert (int) ;

__attribute__((used)) static void halve1Dimage_byte(GLint components, GLuint width, GLuint height,
         const GLbyte *dataIn, GLbyte *dataOut,
         GLint element_size,GLint ysize, GLint group_size)
{
   GLint halfWidth= width / 2;
   GLint halfHeight= height / 2;
   const char *src= (const char *) dataIn;
   GLbyte *dest= dataOut;
   int jj;

   assert(width == 1 || height == 1);
   assert(width != height);

   if (height == 1) {
      assert(width != 1);
      halfHeight= 1;

      for (jj= 0; jj< halfWidth; jj++) {
  int kk;
  for (kk= 0; kk< components; kk++) {
     *dest= (*(const GLbyte*)src + *(const GLbyte*)(src+group_size)) / 2;

     src+= element_size;
     dest++;
  }
  src+= group_size;
      }
      {
  int padBytes= ysize - (width*group_size);
  src+= padBytes;
      }
   }
   else if (width == 1) {
      int padBytes= ysize - (width * group_size);
      assert(height != 1);
      halfWidth= 1;



      for (jj= 0; jj< halfHeight; jj++) {
  int kk;
  for (kk= 0; kk< components; kk++) {
     *dest= (*(const GLbyte*)src + *(const GLbyte*)(src+ysize)) / 2;

     src+= element_size;
     dest++;
  }
  src+= padBytes;
  src+= ysize;
      }

      assert(src == &((const char *)dataIn)[ysize*height]);
   }

   assert((char *)dest == &((char *)dataOut)
   [components * element_size * halfWidth * halfHeight]);
}
