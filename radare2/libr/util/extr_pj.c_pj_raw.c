
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sb; } ;
typedef TYPE_1__ PJ ;


 int r_return_if_fail (int) ;
 int r_strbuf_append (int ,char const*) ;

__attribute__((used)) static void pj_raw(PJ *j, const char *msg) {
 r_return_if_fail (j && msg);
 if (*msg) {
  r_strbuf_append (j->sb, msg);
 }
}
