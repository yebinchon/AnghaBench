
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnal ;


 char* strdup (char*) ;

__attribute__((used)) static char *get_reg_profile(RAnal *anal) {
 return strdup (
  "=PC	pc\n"
  "=BP	bp\n"
  "=SP	sp\n"
  "gpr	sp	.32	0	0\n"
  "gpr	pc	.32	4	0\n"
  "gpr	bp	.32	8	0\n"
 );
}
