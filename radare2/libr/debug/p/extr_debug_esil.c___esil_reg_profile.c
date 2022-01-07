
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; int arch; } ;
typedef TYPE_1__ RDebug ;


 char* r_anal_get_reg_profile (int ) ;
 int strcmp (int ,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static char *__esil_reg_profile(RDebug *dbg) {
 if (!strcmp (dbg->arch, "bf")) {
  return strdup (
   "=PC	pc\n"
   "=SP	esp\n"
   "=BP	ptr\n"
   "gpr	rax	.32	0	0\n"
   "gpr	pc	.32	0	0\n"
   "gpr	ptr	.32	4	0\n"
   "gpr	esp	.32	8	0\n"
   "gpr	scr	.32	12	0\n"
   "gpr	scri	.32	16	0\n"
   "gpr	inp	.32	20	0\n"
   "gpr	inpi	.32	24	0\n"
   "gpr	mem	.32	28	0\n"
   "gpr	memi	.32	32	0\n"
        );
 }
 return r_anal_get_reg_profile (dbg->anal);
}
