
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ SStrBuf ;


 int R_FREE (scalar_t__) ;

void r_strbuf_fini(SStrBuf *sb) {
 if (sb && sb->ptr)
  R_FREE (sb->ptr);
}
