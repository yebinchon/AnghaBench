
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
kprintn(void (*put)(const char), uint32_t ul, int base, int width, char padchar)
{

 char *p, buf[(sizeof(long) * 8 / 3) + 2];

 p = buf;
 do {
  *p++ = "0123456789abcdef"[ul % base];
 } while (ul /= base);

        while (p - buf < width--) {
          put(padchar);
        }

 do {
  put(*--p);
 } while (p > buf);
}
