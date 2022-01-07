
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLushort ;
typedef int GLuint ;
typedef int GLint ;


 int BOX2 ;
 int __GLU_SWAP_2_BYTES (char const*) ;
 int assert (int) ;

__attribute__((used)) static void halve1Dimage_ushort(GLint components, GLuint width, GLuint height,
    const GLushort *dataIn, GLushort *dataOut,
    GLint element_size, GLint ysize,
    GLint group_size, GLint myswap_bytes)
{
   GLint halfWidth= width / 2;
   GLint halfHeight= height / 2;
   const char *src= (const char *) dataIn;
   GLushort *dest= dataOut;
   int jj;

   assert(width == 1 || height == 1);
   assert(width != height);

   if (height == 1) {
      assert(width != 1);
      halfHeight= 1;

      for (jj= 0; jj< halfWidth; jj++) {
  int kk;
  for (kk= 0; kk< components; kk++) {

     GLushort ushort[2];
     if (myswap_bytes) {
        ushort[0]= __GLU_SWAP_2_BYTES(src);
        ushort[1]= __GLU_SWAP_2_BYTES(src+group_size);
     }
     else {
        ushort[0]= *(const GLushort*)src;
        ushort[1]= *(const GLushort*)(src+group_size);
     }

     *dest= (ushort[0] + ushort[1]) / 2;
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

     GLushort ushort[2];
     if (myswap_bytes) {
        ushort[0]= __GLU_SWAP_2_BYTES(src);
        ushort[1]= __GLU_SWAP_2_BYTES(src+ysize);
     }
     else {
        ushort[0]= *(const GLushort*)src;
        ushort[1]= *(const GLushort*)(src+ysize);
     }
     *dest= (ushort[0] + ushort[1]) / 2;

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
