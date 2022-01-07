
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int size; } ;
struct TYPE_12__ {int value_or_type; scalar_t__ name_or_val; } ;
struct TYPE_8__ {int size; } ;
struct TYPE_11__ {TYPE_1__ name; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_10__ {TYPE_2__ name; } ;
typedef TYPE_3__ SVal_LF_USHORT ;
typedef TYPE_4__ SVal_LF_ULONG ;
typedef TYPE_5__ SVal ;
typedef TYPE_6__ SCString ;


 int eLF_CHAR ;


 int printf (char*,int) ;

__attribute__((used)) static void get_sval_name_len(SVal *val, int *res_len) {
 if (val->value_or_type < eLF_CHAR) {
  SCString *scstr = (SCString *) val->name_or_val;
  *res_len = scstr->size;
 } else {
  switch (val->value_or_type) {
  case 129:
  {
   SVal_LF_ULONG *lf_ulong;
   lf_ulong = (SVal_LF_ULONG *) val->name_or_val;
   *res_len = lf_ulong->name.size;
   break;
  }
  case 128:
  {
   SVal_LF_USHORT *lf_ushort;
   lf_ushort = (SVal_LF_USHORT *) val->name_or_val;
   *res_len = lf_ushort->name.size;
   break;
  }
  default:
   *res_len = 0;
   printf("get_sval_name_len: Skipping unsupported type (%d)\n", val->value_or_type);
   break;
  }
 }
}
