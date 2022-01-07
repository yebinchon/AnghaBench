
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vstr_t ;


 int vstr_ensure_extra (int *,size_t) ;

void vstr_hint_size(vstr_t *vstr, size_t size) {
    vstr_ensure_extra(vstr, size);
}
