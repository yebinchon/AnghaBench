
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;


 int ECPG_SQLSTATE_RESTRICTED_DATA_TYPE_ATTRIBUTE_VIOLATION ;
 int ECPG_VAR_NOT_NUMERIC ;
 int ecpg_raise (int,int ,int ,int *) ;

__attribute__((used)) static bool
get_int_item(int lineno, void *var, enum ECPGttype vartype, int value)
{
 switch (vartype)
 {
  case 132:
   *(short *) var = (short) value;
   break;
  case 135:
   *(int *) var = (int) value;
   break;
  case 134:
   *(long *) var = (long) value;
   break;
  case 128:
   *(unsigned short *) var = (unsigned short) value;
   break;
  case 131:
   *(unsigned int *) var = (unsigned int) value;
   break;
  case 130:
   *(unsigned long *) var = (unsigned long) value;
   break;
  case 133:
   *(long long int *) var = (long long int) value;
   break;
  case 129:
   *(unsigned long long int *) var = (unsigned long long int) value;
   break;
  case 136:
   *(float *) var = (float) value;
   break;
  case 137:
   *(double *) var = (double) value;
   break;
  default:
   ecpg_raise(lineno, ECPG_VAR_NOT_NUMERIC, ECPG_SQLSTATE_RESTRICTED_DATA_TYPE_ATTRIBUTE_VIOLATION, ((void*)0));
   return 0;
 }

 return 1;
}
