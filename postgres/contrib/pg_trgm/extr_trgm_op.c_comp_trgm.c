
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMPTRGM (void const*,void const*) ;

__attribute__((used)) static int
comp_trgm(const void *a, const void *b)
{
 return CMPTRGM(a, b);
}
