
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbtt_uint8 ;
typedef int stbtt_uint32 ;
typedef int stbtt_int32 ;


 int STBTT_strlen (char*) ;
 int stbtt__find_table (int *,int,char*) ;
 int stbtt__isfont (int *) ;
 scalar_t__ stbtt__matchpair (int *,int,int *,int,int,int) ;
 int ttUSHORT (int *) ;

__attribute__((used)) static int stbtt__matches(stbtt_uint8 *fc, stbtt_uint32 offset, stbtt_uint8 *name, stbtt_int32 flags)
{
   stbtt_int32 nlen = (stbtt_int32) STBTT_strlen((char *) name);
   stbtt_uint32 nm,hd;
   if (!stbtt__isfont(fc+offset)) return 0;


   if (flags) {
      hd = stbtt__find_table(fc, offset, "head");
      if ((ttUSHORT(fc+hd+44) & 7) != (flags & 7)) return 0;
   }

   nm = stbtt__find_table(fc, offset, "name");
   if (!nm) return 0;

   if (flags) {

      if (stbtt__matchpair(fc, nm, name, nlen, 16, -1)) return 1;
      if (stbtt__matchpair(fc, nm, name, nlen, 1, -1)) return 1;
      if (stbtt__matchpair(fc, nm, name, nlen, 3, -1)) return 1;
   } else {
      if (stbtt__matchpair(fc, nm, name, nlen, 16, 17)) return 1;
      if (stbtt__matchpair(fc, nm, name, nlen, 1, 2)) return 1;
      if (stbtt__matchpair(fc, nm, name, nlen, 3, -1)) return 1;
   }

   return 0;
}
