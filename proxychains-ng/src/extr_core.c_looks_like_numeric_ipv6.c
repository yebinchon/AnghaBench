
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strchr (char const*,char) ;

__attribute__((used)) static int looks_like_numeric_ipv6(const char *node)
{
 if(!strchr(node, ':')) return 0;
 const char* p= node;
 while(1) switch(*(p++)) {
  case 0: return 1;
  case ':': case '.':
  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
  case 'A': case 'B': case 'C': case 'D': case 'E': case 'F':
  case 'a': case 'b': case 'c': case 'd': case 'e': case 'f':
   break;
  default: return 0;
 }
}
