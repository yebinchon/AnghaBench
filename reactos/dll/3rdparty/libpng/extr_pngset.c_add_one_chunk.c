
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_const_bytep ;
typedef scalar_t__* png_bytep ;
typedef scalar_t__ png_byte ;


 int PNG_HANDLE_CHUNK_AS_DEFAULT ;
 scalar_t__ memcmp (scalar_t__*,int ,int) ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static unsigned int
add_one_chunk(png_bytep list, unsigned int count, png_const_bytep add, int keep)
{
   unsigned int i;




   for (i=0; i<count; ++i, list += 5)
   {
      if (memcmp(list, add, 4) == 0)
      {
         list[4] = (png_byte)keep;

         return count;
      }
   }

   if (keep != PNG_HANDLE_CHUNK_AS_DEFAULT)
   {
      ++count;
      memcpy(list, add, 4);
      list[4] = (png_byte)keep;
   }

   return count;
}
