
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int element_compare (void const*,void const*) ;

__attribute__((used)) static int
element_match(const void *key1, const void *key2, Size keysize)
{

 return element_compare(key1, key2);
}
