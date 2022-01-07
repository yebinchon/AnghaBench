
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_9__ {int lastsz; TYPE_1__* anal; scalar_t__ cur; scalar_t__ old; } ;
struct TYPE_8__ {int reg; } ;
typedef TYPE_2__ RAnalEsil ;


 void* esil_internal_sizeof_reg (TYPE_2__*,char*) ;
 int free (char*) ;
 scalar_t__ r_anal_esil_get_parm (TYPE_2__*,char*,scalar_t__*) ;
 char* r_anal_esil_pop (TYPE_2__*) ;
 int r_anal_esil_pushnum (TYPE_2__*,int) ;
 scalar_t__ r_reg_get (int ,char*,int) ;
 int signed_compare_gt (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static bool esil_bigger_equal(RAnalEsil *esil) {
 ut64 num, num2;
 bool ret = 0;
 char *dst = r_anal_esil_pop (esil);
 char *src = r_anal_esil_pop (esil);
 if (dst && r_anal_esil_get_parm (esil, dst, &num)) {
  if (src && r_anal_esil_get_parm (esil, src, &num2)) {
   esil->old = num;
   esil->cur = num - num2;
   ret = 1;
   if (r_reg_get (esil->anal->reg, dst, -1)) {
    esil->lastsz = esil_internal_sizeof_reg (esil, dst);
   } else if (r_reg_get (esil->anal->reg, src, -1)) {
    esil->lastsz = esil_internal_sizeof_reg (esil, src);
   } else {

    esil->lastsz = 64;
   }
   r_anal_esil_pushnum (esil, (num == num2) |
                              signed_compare_gt (num, num2, esil->lastsz));
  }
 }
 free (dst);
 free (src);
 return ret;
}
