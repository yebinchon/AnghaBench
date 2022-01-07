
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NODE_DBG (char*) ;
 int assert (int) ;
 int check_segment (unsigned char const*,size_t) ;
 size_t coap_buildOptionHeader (int ,int,unsigned char*,size_t) ;
 int decode_segment (unsigned char const*,size_t,unsigned char*) ;

int make_decoded_option(const unsigned char *s, size_t length,
      unsigned char *buf, size_t buflen) {
  int res;
  size_t written;

  if (!buflen) {
    NODE_DBG("make_decoded_option(): buflen is 0!\n");
    return -1;
  }

  res = check_segment(s, length);
  if (res < 0)
    return -1;



  written = coap_buildOptionHeader(0, res, buf, buflen);

  assert(written <= buflen);

  if (!written)
    return -1;

  buf += written;
  buflen -= written;

  if (buflen < (size_t)res) {
    NODE_DBG("buffer too small for option\n");
    return -1;
  }

  decode_segment(s, length, buf);

  return written + res;
}
