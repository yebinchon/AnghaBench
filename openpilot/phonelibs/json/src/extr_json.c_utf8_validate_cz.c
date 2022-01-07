
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int utf8_validate_cz(const char *s)
{
 unsigned char c = *s++;

 if (c <= 0x7F) {
  return 1;
 } else if (c <= 0xC1) {

  return 0;
 } else if (c <= 0xDF) {

  if (((unsigned char)*s++ & 0xC0) != 0x80)
   return 0;

  return 2;
 } else if (c <= 0xEF) {

  if (c == 0xE0 && (unsigned char)*s < 0xA0)
   return 0;


  if (c == 0xED && (unsigned char)*s > 0x9F)
   return 0;


  if (((unsigned char)*s++ & 0xC0) != 0x80)
   return 0;
  if (((unsigned char)*s++ & 0xC0) != 0x80)
   return 0;

  return 3;
 } else if (c <= 0xF4) {

  if (c == 0xF0 && (unsigned char)*s < 0x90)
   return 0;


  if (c == 0xF4 && (unsigned char)*s > 0x8F)
   return 0;


  if (((unsigned char)*s++ & 0xC0) != 0x80)
   return 0;
  if (((unsigned char)*s++ & 0xC0) != 0x80)
   return 0;
  if (((unsigned char)*s++ & 0xC0) != 0x80)
   return 0;

  return 4;
 } else {
  return 0;
 }
}
