
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int TupOutputState ;
typedef int DestReceiver ;
typedef int AttrNumber ;


 int CreateTemplateTupleDesc (int) ;
 char* GetConfigOptionByName (char const*,char const**,int) ;
 int TEXTOID ;
 int TTSOpsVirtual ;
 int TupleDescInitBuiltinEntry (int ,int ,char const*,int ,int,int ) ;
 int * begin_tup_output_tupdesc (int *,int ,int *) ;
 int do_text_output_oneline (int *,char*) ;
 int end_tup_output (int *) ;

__attribute__((used)) static void
ShowGUCConfigOption(const char *name, DestReceiver *dest)
{
 TupOutputState *tstate;
 TupleDesc tupdesc;
 const char *varname;
 char *value;


 value = GetConfigOptionByName(name, &varname, 0);


 tupdesc = CreateTemplateTupleDesc(1);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 1, varname,
         TEXTOID, -1, 0);


 tstate = begin_tup_output_tupdesc(dest, tupdesc, &TTSOpsVirtual);


 do_text_output_oneline(tstate, value);

 end_tup_output(tstate);
}
