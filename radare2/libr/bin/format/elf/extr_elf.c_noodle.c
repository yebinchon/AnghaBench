
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int b; } ;
typedef TYPE_1__ ELFOBJ ;


 int r_buf_read_at (int ,int,int *,int) ;
 int r_buf_size (int ) ;
 int * r_mem_mem (int *,int,int const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int noodle(ELFOBJ *bin, const char *s) {
 if (r_buf_size (bin->b) <= 64) {
  return 0;
 }
 ut8 tmp[64];
 r_buf_read_at (bin->b, r_buf_size (bin->b) - 64, tmp, 64);
 return r_mem_mem (tmp, 64, (const ut8 *)s, strlen (s)) != ((void*)0);
}
