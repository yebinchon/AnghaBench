
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int AttrNumber ;


 int CreateTemplateTupleDesc (int) ;
 int GetConfigOptionByName (char const*,char const**,int) ;
 int TEXTOID ;
 int TupleDescInitEntry (int ,int ,char const*,int ,int,int ) ;
 scalar_t__ guc_name_compare (char const*,char*) ;

TupleDesc
GetPGVariableResultDesc(const char *name)
{
 TupleDesc tupdesc;

 if (guc_name_compare(name, "all") == 0)
 {

  tupdesc = CreateTemplateTupleDesc(3);
  TupleDescInitEntry(tupdesc, (AttrNumber) 1, "name",
         TEXTOID, -1, 0);
  TupleDescInitEntry(tupdesc, (AttrNumber) 2, "setting",
         TEXTOID, -1, 0);
  TupleDescInitEntry(tupdesc, (AttrNumber) 3, "description",
         TEXTOID, -1, 0);
 }
 else
 {
  const char *varname;


  (void) GetConfigOptionByName(name, &varname, 0);


  tupdesc = CreateTemplateTupleDesc(1);
  TupleDescInitEntry(tupdesc, (AttrNumber) 1, varname,
         TEXTOID, -1, 0);
 }
 return tupdesc;
}
