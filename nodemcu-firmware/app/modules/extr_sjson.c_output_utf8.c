
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int luaL_Buffer ;


 int luaL_addlstring (int *,char*,int) ;

__attribute__((used)) static void output_utf8(luaL_Buffer *buf, int c) {
  char space[4];
  char *b = space;

  if (c<0x80) *b++=c;
  else if (c<0x800) *b++=192+c/64, *b++=128+c%64;
  else if (c-0xd800u<0x800) *b++ = '?';
  else if (c<0x10000) *b++=224+c/4096, *b++=128+c/64%64, *b++=128+c%64;
  else if (c<0x110000) *b++=240+c/262144, *b++=128+c/4096%64, *b++=128+c/64%64, *b++=128+c%64;
  else *b++ = '?';

  luaL_addlstring(buf, space, b - space);
}
