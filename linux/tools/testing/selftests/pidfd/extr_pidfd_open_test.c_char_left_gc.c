
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int char_left_gc(const char *buffer, size_t len)
{
 size_t i;

 for (i = 0; i < len; i++) {
  if (buffer[i] == ' ' ||
      buffer[i] == '\t')
   continue;

  return i;
 }

 return 0;
}
