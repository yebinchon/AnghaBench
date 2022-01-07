
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int FAIL_IF (int ) ;
 int FPR_1_REP ;
 int FPR_3_REP ;
 int FPR_4_REP ;
 int GPR_1 ;
 int GPR_3 ;
 int GPR_4 ;
 int TEST_PASS ;
 int* pptr ;
 int show_ckpt_fpr (int ,unsigned long*) ;
 int show_ckpt_gpr (int ,unsigned long*) ;
 int show_fpr (int ,unsigned long*) ;
 int show_gpr (int ,unsigned long*) ;
 int start_trace (int ) ;
 int stop_trace (int ) ;
 int validate_fpr (unsigned long*,int ) ;
 int validate_gpr (unsigned long*,int ) ;
 int write_ckpt_fpr (int ,int ) ;
 int write_ckpt_gpr (int ,int ) ;

int trace_tm_spd_gpr(pid_t child)
{
 unsigned long gpr[18];
 unsigned long fpr[32];

 FAIL_IF(start_trace(child));
 FAIL_IF(show_gpr(child, gpr));
 FAIL_IF(validate_gpr(gpr, GPR_4));
 FAIL_IF(show_fpr(child, fpr));
 FAIL_IF(validate_fpr(fpr, FPR_4_REP));
 FAIL_IF(show_ckpt_fpr(child, fpr));
 FAIL_IF(validate_fpr(fpr, FPR_1_REP));
 FAIL_IF(show_ckpt_gpr(child, gpr));
 FAIL_IF(validate_gpr(gpr, GPR_1));
 FAIL_IF(write_ckpt_gpr(child, GPR_3));
 FAIL_IF(write_ckpt_fpr(child, FPR_3_REP));

 pptr[0] = 1;
 pptr[1] = 1;
 FAIL_IF(stop_trace(child));
 return TEST_PASS;
}
