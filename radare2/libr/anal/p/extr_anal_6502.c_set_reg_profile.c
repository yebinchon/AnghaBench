
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ RAnal ;


 int r_reg_set_profile_string (int ,char*) ;

__attribute__((used)) static int set_reg_profile(RAnal *anal) {
 char *p =
  "=PC	pc\n"
  "=SP	sp\n"
  "gpr	a	.8	0	0\n"
  "gpr	x	.8	1	0\n"
  "gpr	y	.8	2	0\n"

  "gpr	flags	.8	3	0\n"
  "gpr	C	.1	.24	0\n"
  "gpr	Z	.1	.25	0\n"
  "gpr	I	.1	.26	0\n"
  "gpr	D	.1	.27	0\n"



  "gpr	V	.1	.30	0\n"
  "gpr	N	.1	.31	0\n"
  "gpr	sp	.8	4	0\n"
  "gpr	pc	.16	5	0\n";
 return r_reg_set_profile_string (anal->reg, p);
}
