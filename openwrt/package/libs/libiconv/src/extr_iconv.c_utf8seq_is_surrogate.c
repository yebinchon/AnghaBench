
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int utf8seq_is_surrogate(char *s, int n)
{
 return ((n == 3) && (*s == 0xED) && (*(s+1) >= 0xA0) && (*(s+1) <= 0xBF));
}
