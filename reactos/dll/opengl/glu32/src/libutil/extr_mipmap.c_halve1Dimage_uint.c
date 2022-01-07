
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLint ;


 int BOX2 ;
 int __GLU_SWAP_4_BYTES (char const*) ;
 int assert (int) ;

__attribute__((used)) static void halve1Dimage_uint(GLint components, GLuint width, GLuint height,
         const GLuint *dataIn, GLuint *dataOut,
         GLint element_size, GLint ysize,
         GLint group_size, GLint myswap_bytes)
{
   GLint halfWidth= width / 2;
   GLint halfHeight= height / 2;
   const char *src= (const char *) dataIn;
   GLuint *dest= dataOut;
   int jj;

   assert(width == 1 || height == 1);
   assert(width != height);

   if (height == 1) {
      assert(width != 1);
      halfHeight= 1;

      for (jj= 0; jj< halfWidth; jj++) {
  int kk;
  for (kk= 0; kk< components; kk++) {

     GLuint uint[2];
     if (myswap_bytes) {
        uint[0]= __GLU_SWAP_4_BYTES(src);
        uint[1]= __GLU_SWAP_4_BYTES(src+group_size);
     }
     else {
        uint[0]= *(const GLuint*)src;
        uint[1]= *(const GLuint*)(src+group_size);
     }
     *dest= ((double)uint[0]+(double)uint[1])/2.0;

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

     GLuint uint[2];
     if (myswap_bytes) {
        uint[0]= __GLU_SWAP_4_BYTES(src);
        uint[1]= __GLU_SWAP_4_BYTES(src+ysize);
     }
     else {
        uint[0]= *(const GLuint*)src;
        uint[1]= *(const GLuint*)(src+ysize);
     }
     *dest= ((double)uint[0]+(double)uint[1])/2.0;

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
