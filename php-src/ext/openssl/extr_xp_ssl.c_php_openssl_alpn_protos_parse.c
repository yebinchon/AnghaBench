
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efree (unsigned char*) ;
 unsigned char* emalloc (int) ;
 int strlen (char const*) ;

__attribute__((used)) static unsigned char *php_openssl_alpn_protos_parse(unsigned short *outlen, const char *in)
{
 size_t len;
 unsigned char *out;
 size_t i, start = 0;

 len = strlen(in);
 if (len >= 65535) {
  return ((void*)0);
 }

 out = emalloc(strlen(in) + 1);

 for (i = 0; i <= len; ++i) {
  if (i == len || in[i] == ',') {
   if (i - start > 255) {
    efree(out);
    return ((void*)0);
   }
   out[start] = i - start;
   start = i + 1;
  } else {
   out[i + 1] = in[i];
  }
 }

 *outlen = len + 1;

 return out;
}
