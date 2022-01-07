
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_2__ {int f_symptr; int f_nsyms; } ;
struct r_bin_coff_obj {int size; int b; TYPE_1__ hdr; } ;
struct coff_symbol {int dummy; } ;
typedef int n ;


 int r_buf_read_at (int ,int,int *,int) ;
 char* r_str_ndup (char*,int) ;
 char* strdup (char*) ;

char *r_coff_symbol_name(struct r_bin_coff_obj *obj, void *ptr) {
 char n[256] = {0};
 int len = 0, offset = 0;
 union {
  char name[8];
  struct {
   ut32 zero;
   ut32 offset;
  };
 } *p = ptr;
 if (!ptr) {
  return ((void*)0);
 }
 if (p->zero) {
  return r_str_ndup (p->name, 8);
 }
 offset = obj->hdr.f_symptr + obj->hdr.f_nsyms * sizeof (struct coff_symbol) + p->offset;
 if (offset > obj->size) {
  return ((void*)0);
 }
 len = r_buf_read_at (obj->b, offset, (ut8*)n, sizeof (n));
 if (len < 1) {
  return ((void*)0);
 }

 n[sizeof (n) - 1] = 0;
 return strdup (n);
}
