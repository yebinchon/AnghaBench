
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * xmlTextWriterPtr ;
typedef int * xmlBufferPtr ;
struct pg_tm {int tm_mday; int tm_mon; int tm_year; } ;
typedef int int16 ;
typedef int fsec_t ;
typedef int bytea ;
typedef int TimestampTz ;
typedef int Timestamp ;
struct TYPE_9__ {int err_occurred; } ;
struct TYPE_8__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ PgXmlErrorContext ;
typedef int Oid ;
typedef int Datum ;
typedef scalar_t__ DateADT ;
typedef int ArrayType ;


 int ARR_ELEMTYPE (int *) ;



 int DATE_NOT_FINITE (scalar_t__) ;
 int * DatumGetArrayTypeP (int) ;
 int DatumGetBool (int) ;
 int * DatumGetByteaPP (int) ;
 scalar_t__ DatumGetDateADT (int) ;
 int DatumGetTimestamp (int) ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int EncodeDateOnly (struct pg_tm*,int ,char*) ;
 int EncodeDateTime (struct pg_tm*,int ,int,int,char const*,int ,char*) ;
 int MAXDATELEN ;
 char* OidOutputFunctionCall (int,int) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int PG_XML_STRICTNESS_ALL ;
 scalar_t__ POSTGRES_EPOCH_JDATE ;


 int TIMESTAMP_NOT_FINITE (int ) ;
 int USE_XSD_DATES ;
 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int XMLBINARY_BASE64 ;
 int XMLOID ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int deconstruct_array (int *,int,int ,int,char,int**,int**,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 char* escape_xml (char*) ;
 int getBaseType (int) ;
 int getTypeOutputInfo (int,int*,int*) ;
 int get_typlenbyvalalign (int,int *,int*,char*) ;
 int initStringInfo (TYPE_1__*) ;
 int j2date (scalar_t__,int *,int *,int *) ;
 int pfree (int*) ;
 int pg_xml_done (TYPE_2__*,int) ;
 TYPE_2__* pg_xml_init (int ) ;
 char* pstrdup (char const*) ;
 int timestamp2tm (int ,int*,struct pg_tm*,int *,char const**,int *) ;
 scalar_t__ type_is_array_domain (int) ;
 scalar_t__ xmlBufferContent (int * volatile) ;
 int * xmlBufferCreate () ;
 int xmlBufferFree (int * volatile) ;
 int xmlFreeTextWriter (int * volatile) ;
 int * xmlNewTextWriterMemory (int * volatile,int ) ;
 int xmlTextWriterWriteBase64 (int * volatile,int ,int ,int ) ;
 int xmlTextWriterWriteBinHex (int * volatile,int ,int ,int ) ;
 int xml_ereport (TYPE_2__*,int ,int ,char*) ;
 int xmlbinary ;

char *
map_sql_value_to_xml_value(Datum value, Oid type, bool xml_escape_strings)
{
 if (type_is_array_domain(type))
 {
  ArrayType *array;
  Oid elmtype;
  int16 elmlen;
  bool elmbyval;
  char elmalign;
  int num_elems;
  Datum *elem_values;
  bool *elem_nulls;
  StringInfoData buf;
  int i;

  array = DatumGetArrayTypeP(value);
  elmtype = ARR_ELEMTYPE(array);
  get_typlenbyvalalign(elmtype, &elmlen, &elmbyval, &elmalign);

  deconstruct_array(array, elmtype,
        elmlen, elmbyval, elmalign,
        &elem_values, &elem_nulls,
        &num_elems);

  initStringInfo(&buf);

  for (i = 0; i < num_elems; i++)
  {
   if (elem_nulls[i])
    continue;
   appendStringInfoString(&buf, "<element>");
   appendStringInfoString(&buf,
           map_sql_value_to_xml_value(elem_values[i],
                 elmtype, 1));
   appendStringInfoString(&buf, "</element>");
  }

  pfree(elem_values);
  pfree(elem_nulls);

  return buf.data;
 }
 else
 {
  Oid typeOut;
  bool isvarlena;
  char *str;





  type = getBaseType(type);




  switch (type)
  {
   case 132:
    if (DatumGetBool(value))
     return "true";
    else
     return "false";

   case 130:
    {
     DateADT date;
     struct pg_tm tm;
     char buf[MAXDATELEN + 1];

     date = DatumGetDateADT(value);

     if (DATE_NOT_FINITE(date))
      ereport(ERROR,
        (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
         errmsg("date out of range"),
         errdetail("XML does not support infinite date values.")));
     j2date(date + POSTGRES_EPOCH_JDATE,
         &(tm.tm_year), &(tm.tm_mon), &(tm.tm_mday));
     EncodeDateOnly(&tm, USE_XSD_DATES, buf);

     return pstrdup(buf);
    }

   case 129:
    {
     Timestamp timestamp;
     struct pg_tm tm;
     fsec_t fsec;
     char buf[MAXDATELEN + 1];

     timestamp = DatumGetTimestamp(value);


     if (TIMESTAMP_NOT_FINITE(timestamp))
      ereport(ERROR,
        (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
         errmsg("timestamp out of range"),
         errdetail("XML does not support infinite timestamp values.")));
     else if (timestamp2tm(timestamp, ((void*)0), &tm, &fsec, ((void*)0), ((void*)0)) == 0)
      EncodeDateTime(&tm, fsec, 0, 0, ((void*)0), USE_XSD_DATES, buf);
     else
      ereport(ERROR,
        (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
         errmsg("timestamp out of range")));

     return pstrdup(buf);
    }

   case 128:
    {
     TimestampTz timestamp;
     struct pg_tm tm;
     int tz;
     fsec_t fsec;
     const char *tzn = ((void*)0);
     char buf[MAXDATELEN + 1];

     timestamp = DatumGetTimestamp(value);


     if (TIMESTAMP_NOT_FINITE(timestamp))
      ereport(ERROR,
        (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
         errmsg("timestamp out of range"),
         errdetail("XML does not support infinite timestamp values.")));
     else if (timestamp2tm(timestamp, &tz, &tm, &fsec, &tzn, ((void*)0)) == 0)
      EncodeDateTime(&tm, fsec, 1, tz, tzn, USE_XSD_DATES, buf);
     else
      ereport(ERROR,
        (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
         errmsg("timestamp out of range")));

     return pstrdup(buf);
    }
  }




  getTypeOutputInfo(type, &typeOut, &isvarlena);
  str = OidOutputFunctionCall(typeOut, value);


  if (type == XMLOID || !xml_escape_strings)
   return str;


  return escape_xml(str);
 }
}
