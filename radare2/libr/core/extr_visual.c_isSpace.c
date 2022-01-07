
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int isSpace(char ch) {
 switch (ch) {
 case ' ':
 case '.':
 case ',':
 case '\t':
 case '\n':
  return 1;
 }
 return 0;
}
