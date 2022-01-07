
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chr ;


 int VS (int const*) ;
 int memcmp (int ,int ,size_t) ;

__attribute__((used)) static int
cmp(const chr *x, const chr *y,
 size_t len)
{
 return memcmp(VS(x), VS(y), len * sizeof(chr));
}
