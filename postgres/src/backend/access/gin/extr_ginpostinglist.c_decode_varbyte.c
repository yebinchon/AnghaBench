
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int Assert (int) ;

__attribute__((used)) static uint64
decode_varbyte(unsigned char **ptr)
{
 uint64 val;
 unsigned char *p = *ptr;
 uint64 c;


 c = *(p++);
 val = c & 0x7F;
 if (c & 0x80)
 {

  c = *(p++);
  val |= (c & 0x7F) << 7;
  if (c & 0x80)
  {

   c = *(p++);
   val |= (c & 0x7F) << 14;
   if (c & 0x80)
   {

    c = *(p++);
    val |= (c & 0x7F) << 21;
    if (c & 0x80)
    {

     c = *(p++);
     val |= (c & 0x7F) << 28;
     if (c & 0x80)
     {

      c = *(p++);
      val |= (c & 0x7F) << 35;
      if (c & 0x80)
      {

       c = *(p++);
       val |= c << 42;
       Assert((c & 0x80) == 0);
      }
     }
    }
   }
  }
 }

 *ptr = p;

 return val;
}
