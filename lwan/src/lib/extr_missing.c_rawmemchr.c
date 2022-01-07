
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE_MAX ;
 void* memchr (void const*,char,int ) ;

void *rawmemchr(const void *ptr, char c) { return memchr(ptr, c, SIZE_MAX); }
