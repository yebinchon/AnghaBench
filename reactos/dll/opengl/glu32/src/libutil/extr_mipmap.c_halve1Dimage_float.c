
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLint ;
typedef double GLfloat ;


 int BOX2 ;
 double __GLU_SWAP_4_BYTES (char const*) ;
 int assert (int) ;

__attribute__((used)) static void halve1Dimage_float(GLint components, GLuint width, GLuint height,
          const GLfloat *dataIn, GLfloat *dataOut,
          GLint element_size, GLint ysize,
          GLint group_size, GLint myswap_bytes)
{
   GLint halfWidth= width / 2;
   GLint halfHeight= height / 2;
   const char *src= (const char *) dataIn;
   GLfloat *dest= dataOut;
   int jj;

   assert(width == 1 || height == 1);
   assert(width != height);

   if (height == 1) {
      assert(width != 1);
      halfHeight= 1;

      for (jj= 0; jj< halfWidth; jj++) {
  int kk;
  for (kk= 0; kk< components; kk++) {

     GLfloat sfloat[2];
     if (myswap_bytes) {
        sfloat[0]= __GLU_SWAP_4_BYTES(src);
        sfloat[1]= __GLU_SWAP_4_BYTES(src+group_size);
     }
     else {
        sfloat[0]= *(const GLfloat*)src;
        sfloat[1]= *(const GLfloat*)(src+group_size);
     }

     *dest= (sfloat[0] + sfloat[1]) / 2.0;
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

     GLfloat sfloat[2];
     if (myswap_bytes) {
        sfloat[0]= __GLU_SWAP_4_BYTES(src);
        sfloat[1]= __GLU_SWAP_4_BYTES(src+ysize);
     }
     else {
        sfloat[0]= *(const GLfloat*)src;
        sfloat[1]= *(const GLfloat*)(src+ysize);
     }
     *dest= (sfloat[0] + sfloat[1]) / 2.0;

     src+= element_size;
     dest++;
  }
  src+= padBytes;
  src+= ysize;
      }
   }

   assert(src == &((const char *)dataIn)[ysize*height]);
   assert((char *)dest == &((char *)dataOut)
   [components * element_size * halfWidth * halfHeight]);
}
