
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits8 ;


 char* palloc (int) ;

__attribute__((used)) static char *
bits_to_text(bits8 *bits, int len)
{
 int i;
 char *str;

 str = palloc(len + 1);

 for (i = 0; i < len; i++)
  str[i] = (bits[(i / 8)] & (1 << (i % 8))) ? '1' : '0';

 str[i] = '\0';

 return str;
}
