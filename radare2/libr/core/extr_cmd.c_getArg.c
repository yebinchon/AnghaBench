
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int getArg(char ch, int def) {
 switch (ch) {
 case '&':
 case '-':
  return ch;
 }
 return def;
}
