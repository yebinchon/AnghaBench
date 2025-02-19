
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long int php_swf_get_bits (unsigned char* buffer, unsigned int pos, unsigned int count)
{
 unsigned int loop;
 unsigned long int result = 0;

 for (loop = pos; loop < pos + count; loop++)
 {
  result = result +
   ((((buffer[loop / 8]) >> (7 - (loop % 8))) & 0x01) << (count - (loop - pos) - 1));
 }
 return result;
}
