
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t hash(const char *s)
{
 uint32_t hash = 0;

 while (*s)
  hash = 31 * hash + *s++;

 return hash;
}
