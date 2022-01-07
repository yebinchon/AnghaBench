
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_6__ {scalar_t__ atttypid; } ;
struct TYPE_5__ {scalar_t__ natts; } ;


 scalar_t__ CONNECTBY_NCOLS ;
 scalar_t__ CONNECTBY_NCOLS_NOBRANCH ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 scalar_t__ INT4OID ;
 scalar_t__ TEXTOID ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*,...) ;
 int format_type_be (scalar_t__) ;

__attribute__((used)) static void
validateConnectbyTupleDesc(TupleDesc td, bool show_branch, bool show_serial)
{
 int serial_column = 0;

 if (show_serial)
  serial_column = 1;


 if (show_branch)
 {
  if (td->natts != (CONNECTBY_NCOLS + serial_column))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("invalid return type"),
      errdetail("Query-specified return tuple has " "wrong number of columns.")));

 }
 else
 {
  if (td->natts != CONNECTBY_NCOLS_NOBRANCH + serial_column)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("invalid return type"),
      errdetail("Query-specified return tuple has " "wrong number of columns.")));

 }


 if (TupleDescAttr(td, 0)->atttypid != TupleDescAttr(td, 1)->atttypid)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("invalid return type"),
     errdetail("First two columns must be the same type.")));


 if (TupleDescAttr(td, 2)->atttypid != INT4OID)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("invalid return type"),
     errdetail("Third column must be type %s.",
         format_type_be(INT4OID))));


 if (show_branch && TupleDescAttr(td, 3)->atttypid != TEXTOID)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("invalid return type"),
     errdetail("Fourth column must be type %s.",
         format_type_be(TEXTOID))));


 if (show_branch && show_serial &&
  TupleDescAttr(td, 4)->atttypid != INT4OID)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("query-specified return tuple not valid for Connectby: "
      "fifth column must be type %s",
      format_type_be(INT4OID))));


 if (!show_branch && show_serial &&
  TupleDescAttr(td, 3)->atttypid != INT4OID)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("query-specified return tuple not valid for Connectby: "
      "fourth column must be type %s",
      format_type_be(INT4OID))));


}
