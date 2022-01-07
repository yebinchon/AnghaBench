
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t min_size(const size_t a, const size_t b)
{
 return (a < b) ? a : b;
}
