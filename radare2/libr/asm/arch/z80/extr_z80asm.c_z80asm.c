
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assemble (char const*,unsigned char*) ;

int z80asm(unsigned char *outbuf, const char *s) {
 return assemble (s, outbuf);
}
