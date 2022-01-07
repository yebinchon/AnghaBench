
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void process_byte(void *p, size_t frames, size_t channels, float vol)
{
 register char *cur = (char *)p;
 register char *end = cur + frames * channels;

 while (cur < end)
  *(cur++) *= vol;
}
