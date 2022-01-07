
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int fprintf (int ,char*,int) ;
 int stderr ;
 char* strdup (char*) ;

char *get_trans_reg(ut32 ins_bits) {
 char *res = ((void*)0);

 switch (ins_bits) {
 case 6:
  res = "trn0";
  break;
 case 7:
  res = "trn1";
  break;
 case 4:
  res = "trn2";
  break;
 case 5:
  res = "trn3";
  break;
 case 2:
  res = "trn4";
  break;
 case 3:
  res = "trn5";
  break;
 case 0:
  res = "trn6";
  break;
 case 1:
  res = "trn7";
  break;

 default:
  fprintf (stderr, "Invalid transaction instruction 0x%x\n", ins_bits);
 }
 return res? strdup (res): ((void*)0);
}
