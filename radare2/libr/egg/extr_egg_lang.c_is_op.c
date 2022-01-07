
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_op(char x) {
 switch (x) {
 case '-':
 case '+':
  return 1;
 case '*':
 case '/':
  return 2;
 case '^':
 case '|':
 case '&':
  return 3;
 default:
  return 0;
 }
}
