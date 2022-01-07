
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strtoul (char const*,char**,int ) ;

__attribute__((used)) static size_t getsize(const char *s)
{
  char *end = 0;
  size_t val = strtoul(s, &end, 0);

  if (end) {
    int factor;
    if (*end == 'k' || *end == 'K') {
      factor = 1 << 10;
      end++;
    } else if (*end == 'm' || *end == 'M') {
      factor = 1 << 20;
      end++;
    } else {
      factor = 1;
    }

    if (*end == 'B') {
      factor = factor << 3;
    }

    val = (val * factor) / 8;
  }

  return val;
}
