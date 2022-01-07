
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; } ;



__attribute__((used)) static void unescape(struct dstr *str)
{
 char *read = str->array;
 char *write = str->array;

 for (; *read; read++, write++) {
  char cur = *read;
  if (cur == '\\') {
   char next = read[1];
   if (next == '\\') {
    read++;
   } else if (next == 'r') {
    cur = '\r';
    read++;
   } else if (next == 'n') {
    cur = '\n';
    read++;
   }
  }

  if (read != write)
   *write = cur;
 }

 if (read != write)
  *write = '\0';
}
