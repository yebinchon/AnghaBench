
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; int len; } ;
typedef TYPE_1__ vstr_t ;


 int vstr_ensure_extra (TYPE_1__*,size_t) ;

char *vstr_add_len(vstr_t *vstr, size_t len) {
    vstr_ensure_extra(vstr, len);
    char *buf = vstr->buf + vstr->len;
    vstr->len += len;
    return buf;
}
