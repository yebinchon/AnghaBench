
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void pc_stringfromipv4(unsigned char *ip_buf_4_bytes, char *outbuf_16_bytes) {
 unsigned char *p;
 char *o = outbuf_16_bytes;
 unsigned char n;
 for(p = ip_buf_4_bytes; p < ip_buf_4_bytes + 4; p++) {
  n = *p;
  if(*p >= 100) {
   if(*p >= 200)
    *(o++) = '2';
   else
    *(o++) = '1';
   n %= 100;
  }
  if(*p >= 10) {
   *(o++) = (n / 10) + '0';
   n %= 10;
  }
  *(o++) = n + '0';
  *(o++) = '.';
 }
 o[-1] = 0;
}
