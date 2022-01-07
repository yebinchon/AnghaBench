
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut32 ;



__attribute__((used)) static char *condrets_strtok(char *str, const char tok) {
 if (!str) {
  return ((void*)0);
 }
 ut32 i = 0;
 while (1 == 1) {
  if (!str[i]) {
   break;
  }
  if (str[i] == tok) {
   str[i] = '\0';
   return &str[i + 1];
  }
  i++;
 }
 return ((void*)0);
}
