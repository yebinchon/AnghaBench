
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
json_isspace(const unsigned char uc)
{
 switch (uc) {
 case ' ':
 case '\n':
 case '\r':
 case '\t':
  return 1;
 default:
  return 0;
 }
}
