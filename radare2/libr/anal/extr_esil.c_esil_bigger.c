
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* ut64 ;
struct TYPE_9__ {int lastsz; TYPE_1__* anal; void* cur; void* old; } ;
struct TYPE_8__ {int reg; } ;
typedef TYPE_2__ RAnalEsil ;


 void* esil_internal_sizeof_reg (TYPE_2__*,char*) ;
 int free (char*) ;
 scalar_t__ r_anal_esil_get_parm (TYPE_2__*,char*,void**) ;
 char* r_anal_esil_pop (TYPE_2__*) ;
 int r_anal_esil_pushnum (TYPE_2__*,int ) ;
 scalar_t__ r_reg_get (int ,char*,int) ;
 int signed_compare_gt (void*,void*,int) ;

__attribute__((used)) static bool esil_bigger(RAnalEsil *esil) {
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
   r_anal_esil_pushnum (esil, signed_compare_gt (num, num2, esil->lastsz));
  }
 }
 free (dst);
 free (src);
 return ret;
}
