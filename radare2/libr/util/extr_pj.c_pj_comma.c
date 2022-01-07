
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_key; int is_first; } ;
typedef TYPE_1__ PJ ;


 int pj_raw (TYPE_1__*,char*) ;
 int r_return_if_fail (TYPE_1__*) ;

__attribute__((used)) static void pj_comma(PJ *j) {
 r_return_if_fail (j);
 if (!j->is_key) {
  if (!j->is_first) {
   pj_raw (j, ",");
  }
 }
 j->is_first = 0;
 j->is_key = 0;
}
