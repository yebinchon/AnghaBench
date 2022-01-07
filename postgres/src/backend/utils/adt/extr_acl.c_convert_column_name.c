
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int text ;
struct TYPE_2__ {int attnum; scalar_t__ attisdropped; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int AttrNumber ;


 int ATTNAME ;
 int CStringGetDatum (char*) ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidAttrNumber ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char*) ;
 char* get_rel_name (int ) ;
 int pfree (char*) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static AttrNumber
convert_column_name(Oid tableoid, text *column)
{
 char *colname;
 HeapTuple attTuple;
 AttrNumber attnum;

 colname = text_to_cstring(column);






 attTuple = SearchSysCache2(ATTNAME,
          ObjectIdGetDatum(tableoid),
          CStringGetDatum(colname));
 if (HeapTupleIsValid(attTuple))
 {
  Form_pg_attribute attributeForm;

  attributeForm = (Form_pg_attribute) GETSTRUCT(attTuple);

  if (attributeForm->attisdropped)
   attnum = InvalidAttrNumber;
  else
   attnum = attributeForm->attnum;
  ReleaseSysCache(attTuple);
 }
 else
 {
  char *tablename = get_rel_name(tableoid);






  if (tablename != ((void*)0))
  {

   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("column \"%s\" of relation \"%s\" does not exist",
       colname, tablename)));
  }

  attnum = InvalidAttrNumber;
 }

 pfree(colname);
 return attnum;
}
