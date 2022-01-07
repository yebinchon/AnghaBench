
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
typedef int Value ;
struct TYPE_4__ {int location; } ;
typedef int ParseState ;
typedef int ParseCallbackState ;
typedef int Oid ;
typedef int Datum ;
typedef TYPE_1__ Const ;


 int BITOID ;
 int CStringGetDatum (int ) ;
 int DirectFunctionCall3 (int ,int ,int ,int ) ;
 int ERROR ;
 int FLOAT8PASSBYVAL ;
 int INT4OID ;
 int INT8OID ;
 int Int32GetDatum (int) ;
 int Int64GetDatum (int ) ;
 int InvalidOid ;
 int NUMERICOID ;
 int ObjectIdGetDatum (int ) ;





 int UNKNOWNOID ;
 int bit_in ;
 int cancel_parser_errposition_callback (int *) ;
 int elog (int ,char*,int) ;
 int intVal (int *) ;
 TYPE_1__* makeConst (int ,int,int ,int,int ,int,int) ;
 int nodeTag (int *) ;
 int numeric_in ;
 int scanint8 (int ,int,int *) ;
 int setup_parser_errposition_callback (int *,int *,int) ;
 int strVal (int *) ;

Const *
make_const(ParseState *pstate, Value *value, int location)
{
 Const *con;
 Datum val;
 int64 val64;
 Oid typeid;
 int typelen;
 bool typebyval;
 ParseCallbackState pcbstate;

 switch (nodeTag(value))
 {
  case 130:
   val = Int32GetDatum(intVal(value));

   typeid = INT4OID;
   typelen = sizeof(int32);
   typebyval = 1;
   break;

  case 131:

   if (scanint8(strVal(value), 1, &val64))
   {




    int32 val32 = (int32) val64;

    if (val64 == (int64) val32)
    {
     val = Int32GetDatum(val32);

     typeid = INT4OID;
     typelen = sizeof(int32);
     typebyval = 1;
    }
    else
    {
     val = Int64GetDatum(val64);

     typeid = INT8OID;
     typelen = sizeof(int64);
     typebyval = FLOAT8PASSBYVAL;
    }
   }
   else
   {

    setup_parser_errposition_callback(&pcbstate, pstate, location);
    val = DirectFunctionCall3(numeric_in,
            CStringGetDatum(strVal(value)),
            ObjectIdGetDatum(InvalidOid),
            Int32GetDatum(-1));
    cancel_parser_errposition_callback(&pcbstate);

    typeid = NUMERICOID;
    typelen = -1;
    typebyval = 0;
   }
   break;

  case 128:





   val = CStringGetDatum(strVal(value));

   typeid = UNKNOWNOID;
   typelen = -2;
   typebyval = 0;
   break;

  case 132:

   setup_parser_errposition_callback(&pcbstate, pstate, location);
   val = DirectFunctionCall3(bit_in,
           CStringGetDatum(strVal(value)),
           ObjectIdGetDatum(InvalidOid),
           Int32GetDatum(-1));
   cancel_parser_errposition_callback(&pcbstate);
   typeid = BITOID;
   typelen = -1;
   typebyval = 0;
   break;

  case 129:

   con = makeConst(UNKNOWNOID,
       -1,
       InvalidOid,
       -2,
       (Datum) 0,
       1,
       0);
   con->location = location;
   return con;

  default:
   elog(ERROR, "unrecognized node type: %d", (int) nodeTag(value));
   return ((void*)0);
 }

 con = makeConst(typeid,
     -1,
     InvalidOid,
     typelen,
     val,
     0,
     typebyval);
 con->location = location;

 return con;
}
