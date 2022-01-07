
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
typedef scalar_t__ mach0_ut ;
struct TYPE_4__ {int buf; } ;
typedef TYPE_1__ RBinFile ;


 int MAX_CLASS_NAME_LEN ;
 int R_FREE (char*) ;
 int R_MIN (int ,int) ;
 char* calloc (int,int) ;
 int eprintf (char*) ;
 int r_buf_read_at (int ,scalar_t__,int *,int) ;
 int r_return_val_if_fail (int ,int *) ;
 scalar_t__ va2pa (scalar_t__,int*,int*,TYPE_1__*) ;

__attribute__((used)) static char *read_str(RBinFile *bf, mach0_ut p, ut32 *offset, ut32 *left) {
 r_return_val_if_fail (bf && offset && left, ((void*)0));

 mach0_ut paddr = va2pa (p, offset, left, bf);
 if (paddr == 0 || *left <= 1) {
  return ((void*)0);
 }

 int name_len = R_MIN (MAX_CLASS_NAME_LEN, *left);
 char *name = calloc (1, name_len + 1);
 int len = r_buf_read_at (bf->buf, paddr, (ut8 *)name, name_len);
 if (len < name_len) {
  eprintf ("Error reading\n");
  R_FREE (name);
  return ((void*)0);
 }

 return name;
}
