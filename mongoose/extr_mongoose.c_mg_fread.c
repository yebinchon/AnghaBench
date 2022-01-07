
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t fread (void*,size_t,size_t,int *) ;

size_t mg_fread(void *ptr, size_t size, size_t count, FILE *f) {
  return fread(ptr, size, count, f);
}
