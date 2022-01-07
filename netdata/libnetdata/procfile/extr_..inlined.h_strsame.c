
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int strsame(const char *a, const char *b) {
    if(unlikely(a == b)) return 0;
    while(*a && *a == *b) { a++; b++; }
    return *a - *b;
}
