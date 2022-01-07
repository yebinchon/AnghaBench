
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int char_right_gc(const char *buffer, size_t len)
{
 int i;

 for (i = len - 1; i >= 0; i--) {
  if (buffer[i] == ' ' ||
      buffer[i] == '\t' ||
      buffer[i] == '\n' ||
      buffer[i] == '\0')
   continue;

  return i + 1;
 }

 return 0;
}
