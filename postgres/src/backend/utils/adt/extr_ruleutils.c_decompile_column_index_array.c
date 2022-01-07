
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Oid ;
typedef int Datum ;


 int DatumGetArrayTypeP (int ) ;
 int DatumGetInt16 (int ) ;
 int INT2OID ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,int ) ;
 int deconstruct_array (int ,int ,int,int,char,int **,int *,int*) ;
 char* get_attname (int ,int ,int) ;
 int quote_identifier (char*) ;

__attribute__((used)) static int
decompile_column_index_array(Datum column_index_array, Oid relId,
        StringInfo buf)
{
 Datum *keys;
 int nKeys;
 int j;


 deconstruct_array(DatumGetArrayTypeP(column_index_array),
       INT2OID, 2, 1, 's',
       &keys, ((void*)0), &nKeys);

 for (j = 0; j < nKeys; j++)
 {
  char *colName;

  colName = get_attname(relId, DatumGetInt16(keys[j]), 0);

  if (j == 0)
   appendStringInfoString(buf, quote_identifier(colName));
  else
   appendStringInfo(buf, ", %s", quote_identifier(colName));
 }

 return nKeys;
}
