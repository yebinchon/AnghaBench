
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;


 int ECPG_SQLSTATE_RESTRICTED_DATA_TYPE_ATTRIBUTE_VIOLATION ;
 int ECPG_VAR_NOT_NUMERIC ;
 int ecpg_raise (int,int ,int ,int *) ;

__attribute__((used)) static bool
set_int_item(int lineno, int *target, const void *var, enum ECPGttype vartype)
{
 switch (vartype)
 {
  case 132:
   *target = *(const short *) var;
   break;
  case 135:
   *target = *(const int *) var;
   break;
  case 134:
   *target = *(const long *) var;
   break;
  case 128:
   *target = *(const unsigned short *) var;
   break;
  case 131:
   *target = *(const unsigned int *) var;
   break;
  case 130:
   *target = *(const unsigned long *) var;
   break;
  case 133:
   *target = *(const long long int *) var;
   break;
  case 129:
   *target = *(const unsigned long long int *) var;
   break;
  case 136:
   *target = *(const float *) var;
   break;
  case 137:
   *target = *(const double *) var;
   break;
  default:
   ecpg_raise(lineno, ECPG_VAR_NOT_NUMERIC, ECPG_SQLSTATE_RESTRICTED_DATA_TYPE_ATTRIBUTE_VIOLATION, ((void*)0));
   return 0;
 }

 return 1;
}
