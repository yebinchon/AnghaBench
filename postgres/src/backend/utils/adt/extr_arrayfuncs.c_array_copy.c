
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits8 ;


 int array_nelems_size (char*,int,int *,int,int,int,char) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int
array_copy(char *destptr, int nitems,
     char *srcptr, int offset, bits8 *nullbitmap,
     int typlen, bool typbyval, char typalign)
{
 int numbytes;

 numbytes = array_nelems_size(srcptr, offset, nullbitmap, nitems,
         typlen, typbyval, typalign);
 memcpy(destptr, srcptr, numbytes);
 return numbytes;
}
