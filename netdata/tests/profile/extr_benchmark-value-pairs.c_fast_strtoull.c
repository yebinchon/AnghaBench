
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long long fast_strtoull(const char *s) {
  register unsigned long long n = 0;
  register char c;
  for(c = *s; c >= '0' && c <= '9' ; c = *(++s)) {
    n *= 10;
    n += c - '0';

  }
  return n;
}
