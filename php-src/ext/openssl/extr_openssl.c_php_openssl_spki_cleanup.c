
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int php_openssl_spki_cleanup(const char *src, char *dest)
{
 int removed = 0;

 while (*src) {
  if (*src != '\n' && *src != '\r') {
   *dest++ = *src;
  } else {
   ++removed;
  }
  ++src;
 }
 *dest = 0;
 return removed;
}
