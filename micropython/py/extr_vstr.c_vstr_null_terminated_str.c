
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t alloc; size_t len; char* buf; } ;
typedef TYPE_1__ vstr_t ;


 int vstr_extend (TYPE_1__*,int) ;

char *vstr_null_terminated_str(vstr_t *vstr) {

    if (vstr->alloc == vstr->len) {
        vstr_extend(vstr, 1);
    }
    vstr->buf[vstr->len] = '\0';
    return vstr->buf;
}
