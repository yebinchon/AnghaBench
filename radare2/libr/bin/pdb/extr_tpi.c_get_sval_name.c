
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_25__ {char* name; } ;
struct TYPE_33__ {TYPE_1__ name; } ;
struct TYPE_30__ {char* name; } ;
struct TYPE_32__ {TYPE_6__ name; } ;
struct TYPE_31__ {char* name; } ;
struct TYPE_29__ {char* name; } ;
struct TYPE_28__ {char* name; } ;
struct TYPE_27__ {char* name; } ;
struct TYPE_26__ {char* name; } ;
struct TYPE_24__ {char* name; } ;
struct TYPE_23__ {int value_or_type; scalar_t__ name_or_val; } ;
struct TYPE_22__ {TYPE_3__ name; } ;
struct TYPE_21__ {TYPE_5__ name; } ;
struct TYPE_20__ {TYPE_2__ name; } ;
struct TYPE_19__ {TYPE_7__ name; } ;
struct TYPE_18__ {TYPE_4__ name; } ;
typedef TYPE_8__ SVal_LF_USHORT ;
typedef TYPE_9__ SVal_LF_UQUADWORD ;
typedef TYPE_10__ SVal_LF_ULONG ;
typedef TYPE_11__ SVal_LF_SHORT ;
typedef TYPE_12__ SVal_LF_QUADWORD ;
typedef TYPE_13__ SVal_LF_LONG ;
typedef TYPE_14__ SVal_LF_CHAR ;
typedef TYPE_15__ SVal ;
typedef TYPE_16__ SCString ;
 int printf (char*,int) ;

__attribute__((used)) static void get_sval_name(SVal *val, char **name) {
 if (val->value_or_type < 134) {
  SCString *scstr;
  scstr = (SCString *) val->name_or_val;
  *name = scstr->name;

 } else {
  switch (val->value_or_type) {
  case 129:
  {
   SVal_LF_UQUADWORD *lf_uquadword;
   lf_uquadword = (SVal_LF_UQUADWORD *) val->name_or_val;
   *name = lf_uquadword->name.name;
   break;
  }
  case 132:
  {
   SVal_LF_QUADWORD *lf_quadword;
   lf_quadword = (SVal_LF_QUADWORD *) val->name_or_val;
   *name = lf_quadword->name.name;
   break;
  }
  case 134:
  {
   SVal_LF_CHAR *lf_char;
   lf_char = (SVal_LF_CHAR *) val->name_or_val;
   *name = lf_char->name.name;

   break;
  }
  case 130:
  {
   SVal_LF_ULONG *lf_ulong;
   lf_ulong = (SVal_LF_ULONG *) val->name_or_val;
   *name = lf_ulong->name.name;

   break;
  }
  case 133:
  {
   SVal_LF_LONG *lf_long;
   lf_long = (SVal_LF_LONG *) val->name_or_val;
   *name = lf_long->name.name;

   break;
  }
  case 128:
  {
   SVal_LF_USHORT *lf_ushort;
   lf_ushort = (SVal_LF_USHORT *) val->name_or_val;
   *name =lf_ushort->name.name;

   break;
  }
  case 131:
  {
   SVal_LF_SHORT *lf_short;
   lf_short = (SVal_LF_SHORT *) val->name_or_val;
   *name = lf_short->name.name;
   break;
  }
  default:
   *name = 0;
   printf("get_sval_name: Skipping unsupported type (%d)\n", val->value_or_type);
   break;
  }
 }
}
