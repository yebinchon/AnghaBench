
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_3__ {int shstrtab_size; scalar_t__ shstrtab; } ;
typedef TYPE_1__ ELFOBJ ;


 int * r_mem_mem (int const*,int,int const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int needle(ELFOBJ *bin, const char *s) {
 if (bin->shstrtab) {
  ut32 len = bin->shstrtab_size;
  if (len > 4096) {
   len = 4096;
  }
  return r_mem_mem ((const ut8*)bin->shstrtab, len,
    (const ut8*)s, strlen (s)) != ((void*)0);
 }
 return 0;
}
