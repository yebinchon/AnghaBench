
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HASHSZ ;

__attribute__((used)) static unsigned int
grub_env_hashval (const char *s)
{
  unsigned int i = 0;


  while (*s)
    i += 5 * *(s++);

  return i % HASHSZ;
}
