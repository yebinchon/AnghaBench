
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t len; } ;
typedef TYPE_1__ vstr_t ;


 int vstr_init (TYPE_1__*,size_t) ;

void vstr_init_len(vstr_t *vstr, size_t len) {
    vstr_init(vstr, len + 1);
    vstr->len = len;
}
