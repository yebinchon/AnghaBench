
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ round; } ;
struct TYPE_6__ {int hook_reg_write; } ;
struct TYPE_7__ {TYPE_1__ cb; } ;
typedef TYPE_2__ RAnalEsil ;


 int R_ANAL_ESIL_OP_TYPE_CUSTOM ;
 int avr_custom_des ;
 int avr_custom_spm_page_erase ;
 int avr_custom_spm_page_fill ;
 int avr_custom_spm_page_write ;
 TYPE_5__ desctx ;
 int esil_avr_hook_reg_write ;
 int r_anal_esil_set_op (TYPE_2__*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int esil_avr_init(RAnalEsil *esil) {
 if (!esil) {
  return 0;
 }
 desctx.round = 0;
 r_anal_esil_set_op (esil, "des", avr_custom_des, 0, 0, R_ANAL_ESIL_OP_TYPE_CUSTOM);
 r_anal_esil_set_op (esil, "SPM_PAGE_ERASE", avr_custom_spm_page_erase, 0, 0, R_ANAL_ESIL_OP_TYPE_CUSTOM);
 r_anal_esil_set_op (esil, "SPM_PAGE_FILL", avr_custom_spm_page_fill, 0, 0, R_ANAL_ESIL_OP_TYPE_CUSTOM);
 r_anal_esil_set_op (esil, "SPM_PAGE_WRITE", avr_custom_spm_page_write, 0, 0, R_ANAL_ESIL_OP_TYPE_CUSTOM);
 esil->cb.hook_reg_write = esil_avr_hook_reg_write;

 return 1;
}
