
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGFunction ;
typedef int Oid ;
typedef int Datum ;



 int DatumGetDateADT (int ) ;
 int DatumGetInt32 (int ) ;
 int DatumGetTimestamp (int ) ;
 int DatumGetTimestampTz (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERROR ;




 int castTimeToTimeTz (int ,int) ;
 int cmpDateToTimestamp (int ,int ,int) ;
 int cmpDateToTimestampTz (int ,int ,int) ;
 int cmpTimestampToTimestampTz (int ,int ,int) ;
 int date_cmp ;
 int elog (int ,char*,int) ;
 int time_cmp ;
 int timestamp_cmp ;
 int timetz_cmp ;

__attribute__((used)) static int
compareDatetime(Datum val1, Oid typid1, Datum val2, Oid typid2,
    bool useTz, bool *cast_error)
{
 PGFunction cmpfunc;

 *cast_error = 0;

 switch (typid1)
 {
  case 132:
   switch (typid2)
   {
    case 132:
     cmpfunc = date_cmp;

     break;

    case 130:
     return cmpDateToTimestamp(DatumGetDateADT(val1),
             DatumGetTimestamp(val2),
             useTz);

    case 129:
     return cmpDateToTimestampTz(DatumGetDateADT(val1),
            DatumGetTimestampTz(val2),
            useTz);

    case 131:
    case 128:
     *cast_error = 1;
     return 0;

    default:
     elog(ERROR, "unrecognized SQL/JSON datetime type oid: %u",
       typid2);
   }
   break;

  case 131:
   switch (typid2)
   {
    case 131:
     cmpfunc = time_cmp;

     break;

    case 128:
     val1 = castTimeToTimeTz(val1, useTz);
     cmpfunc = timetz_cmp;

     break;

    case 132:
    case 130:
    case 129:
     *cast_error = 1;
     return 0;

    default:
     elog(ERROR, "unrecognized SQL/JSON datetime type oid: %u",
       typid2);
   }
   break;

  case 128:
   switch (typid2)
   {
    case 131:
     val2 = castTimeToTimeTz(val2, useTz);
     cmpfunc = timetz_cmp;

     break;

    case 128:
     cmpfunc = timetz_cmp;

     break;

    case 132:
    case 130:
    case 129:
     *cast_error = 1;
     return 0;

    default:
     elog(ERROR, "unrecognized SQL/JSON datetime type oid: %u",
       typid2);
   }
   break;

  case 130:
   switch (typid2)
   {
    case 132:
     return -cmpDateToTimestamp(DatumGetDateADT(val2),
              DatumGetTimestamp(val1),
              useTz);

    case 130:
     cmpfunc = timestamp_cmp;

     break;

    case 129:
     return cmpTimestampToTimestampTz(DatumGetTimestamp(val1),
              DatumGetTimestampTz(val2),
              useTz);

    case 131:
    case 128:
     *cast_error = 1;
     return 0;

    default:
     elog(ERROR, "unrecognized SQL/JSON datetime type oid: %u",
       typid2);
   }
   break;

  case 129:
   switch (typid2)
   {
    case 132:
     return -cmpDateToTimestampTz(DatumGetDateADT(val2),
             DatumGetTimestampTz(val1),
             useTz);

    case 130:
     return -cmpTimestampToTimestampTz(DatumGetTimestamp(val2),
               DatumGetTimestampTz(val1),
               useTz);

    case 129:
     cmpfunc = timestamp_cmp;

     break;

    case 131:
    case 128:
     *cast_error = 1;
     return 0;

    default:
     elog(ERROR, "unrecognized SQL/JSON datetime type oid: %u",
       typid2);
   }
   break;

  default:
   elog(ERROR, "unrecognized SQL/JSON datetime type oid: %u", typid1);
 }

 if (*cast_error)
  return 0;

 return DatumGetInt32(DirectFunctionCall2(cmpfunc, val1, val2));
}
