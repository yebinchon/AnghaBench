
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char *
strnchr(unsigned char *s, size_t len, unsigned char c) {
  while (len && *s++ != c)
    --len;

  return len ? s : ((void*)0);
}
