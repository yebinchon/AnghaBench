
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int mysqlnd_mbcharlen_utf8(const unsigned int utf8)
{
 if (utf8 < 0x80) {
  return 1;
 }
 if (utf8 < 0xC2) {
  return 0;
 }
 if (utf8 < 0xE0) {
  return 2;
 }
 if (utf8 < 0xF0) {
  return 3;
 }
 if (utf8 < 0xF8) {
  return 4;
 }
 return 0;
}
