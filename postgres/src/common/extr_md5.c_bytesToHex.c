
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



__attribute__((used)) static void
bytesToHex(uint8 b[16], char *s)
{
 static const char *hex = "0123456789abcdef";
 int q,
    w;

 for (q = 0, w = 0; q < 16; q++)
 {
  s[w++] = hex[(b[q] >> 4) & 0x0F];
  s[w++] = hex[b[q] & 0x0F];
 }
 s[w] = '\0';
}
