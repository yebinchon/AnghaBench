
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SdbKv ;


 int sdbkv_key (int const*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int __cmp_asc(const void *a, const void *b) {
 const SdbKv *ka = a, *kb = b;
 return strcmp (sdbkv_key (ka), sdbkv_key (kb));
}
