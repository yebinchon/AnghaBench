
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned long enc_compute_header_len (char*,char*) ;

unsigned long enc_compute_buf_len(char *product, char *version,
      unsigned long datalen)
{
 unsigned long ret;

 ret = enc_compute_header_len(product, version);
 ret += datalen + sizeof(uint32_t);
 ret += (4 - ret % 4);

 return ret;
}
