
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; scalar_t__ buf; } ;
typedef TYPE_1__ vstr_t ;


 int memmove (scalar_t__,char const*,size_t) ;
 int vstr_ensure_extra (TYPE_1__*,size_t) ;

void vstr_add_strn(vstr_t *vstr, const char *str, size_t len) {
    vstr_ensure_extra(vstr, len);
    memmove(vstr->buf + vstr->len, str, len);
    vstr->len += len;
}
