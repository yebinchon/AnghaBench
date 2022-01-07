
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalReilArgType ;
typedef int RAnalEsil ;


 int ARG_CONST ;
 int ARG_NONE ;
 int ARG_REG ;
 int ARG_TEMP ;
 int REIL_TEMP_PREFIX ;


 int r_anal_esil_get_parm_type (int *,char*) ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;

RAnalReilArgType reil_get_arg_type(RAnalEsil *esil, char *s) {
 if (!strncmp (s, REIL_TEMP_PREFIX, strlen (REIL_TEMP_PREFIX))) {
  return ARG_TEMP;
 }
 int type = r_anal_esil_get_parm_type(esil, s);
 switch (type) {
 case 128:
  return ARG_REG;
 case 129:
  return ARG_CONST;
 default:
  return ARG_NONE;
 }
}
