
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_6__ {int enumtypid; int enumlabel; int oid; } ;
struct TYPE_5__ {int t_data; } ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_enum ;


 int ERRCODE_UNSAFE_NEW_ENUM_VALUE_USAGE ;
 int ERROR ;
 int EnumBlacklisted (int ) ;
 int GETSTRUCT (TYPE_1__*) ;
 int HeapTupleHeaderGetXmin (int ) ;
 scalar_t__ HeapTupleHeaderXminCommitted (int ) ;
 int NameStr (int ) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 int TransactionIdIsInProgress (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int ) ;
 int format_type_be (int ) ;

__attribute__((used)) static void
check_safe_enum_use(HeapTuple enumval_tup)
{
 TransactionId xmin;
 Form_pg_enum en = (Form_pg_enum) GETSTRUCT(enumval_tup);





 if (HeapTupleHeaderXminCommitted(enumval_tup->t_data))
  return;





 xmin = HeapTupleHeaderGetXmin(enumval_tup->t_data);
 if (!TransactionIdIsInProgress(xmin) &&
  TransactionIdDidCommit(xmin))
  return;







 if (!EnumBlacklisted(en->oid))
  return;





 ereport(ERROR,
   (errcode(ERRCODE_UNSAFE_NEW_ENUM_VALUE_USAGE),
    errmsg("unsafe use of new value \"%s\" of enum type %s",
     NameStr(en->enumlabel),
     format_type_be(en->enumtypid)),
    errhint("New enum values must be committed before they can be used.")));
}
