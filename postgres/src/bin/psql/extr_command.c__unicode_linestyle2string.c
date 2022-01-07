
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
_unicode_linestyle2string(int linestyle)
{
 switch (linestyle)
 {
  case 128:
   return "single";
   break;
  case 129:
   return "double";
   break;
 }
 return "unknown";
}
