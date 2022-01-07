
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int memset (char*,int ,int) ;
 int sprintf (char*,char*,int) ;

void
sec_hash_to_string(char *out, int out_size, uint8 * in, int in_size)
{
 int k;
 memset(out, 0, out_size);
 for (k = 0; k < in_size; k++, out += 2)
 {
  sprintf(out, "%.2x", in[k]);
 }
}
