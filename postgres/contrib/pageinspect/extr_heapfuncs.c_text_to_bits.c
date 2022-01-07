
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char bits8 ;


 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char) ;
 char* palloc (int) ;

__attribute__((used)) static bits8 *
text_to_bits(char *str, int len)
{
 bits8 *bits;
 int off = 0;
 char byte = 0;

 bits = palloc(len + 1);

 while (off < len)
 {
  if (off % 8 == 0)
   byte = 0;

  if ((str[off] == '0') || (str[off] == '1'))
   byte = byte | ((str[off] - '0') << off % 8);
  else
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg("illegal character '%c' in t_bits string", str[off])));

  if (off % 8 == 7)
   bits[off / 8] = byte;

  off++;
 }

 return bits;
}
