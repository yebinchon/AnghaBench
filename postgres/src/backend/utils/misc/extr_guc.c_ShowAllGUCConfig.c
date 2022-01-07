
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int flags; char* name; char* short_desc; } ;
typedef int TupleDesc ;
typedef int TupOutputState ;
typedef int DestReceiver ;
typedef int Datum ;
typedef int AttrNumber ;


 int CreateTemplateTupleDesc (int) ;
 int DEFAULT_ROLE_READ_ALL_SETTINGS ;
 char* DatumGetPointer (int ) ;
 int GUC_NO_SHOW_ALL ;
 int GUC_SUPERUSER_ONLY ;
 int GetUserId () ;
 int PointerGetDatum (int *) ;
 int TEXTOID ;
 int TTSOpsVirtual ;
 int TupleDescInitBuiltinEntry (int ,int ,char*,int ,int,int ) ;
 char* _ShowOption (struct config_generic*,int) ;
 int * begin_tup_output_tupdesc (int *,int ,int *) ;
 int * cstring_to_text (char*) ;
 int do_tup_output (int *,int *,int*) ;
 int end_tup_output (int *) ;
 struct config_generic** guc_variables ;
 int is_member_of_role (int ,int ) ;
 int num_guc_variables ;
 int pfree (char*) ;

__attribute__((used)) static void
ShowAllGUCConfig(DestReceiver *dest)
{
 int i;
 TupOutputState *tstate;
 TupleDesc tupdesc;
 Datum values[3];
 bool isnull[3] = {0, 0, 0};


 tupdesc = CreateTemplateTupleDesc(3);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 1, "name",
         TEXTOID, -1, 0);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 2, "setting",
         TEXTOID, -1, 0);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 3, "description",
         TEXTOID, -1, 0);


 tstate = begin_tup_output_tupdesc(dest, tupdesc, &TTSOpsVirtual);

 for (i = 0; i < num_guc_variables; i++)
 {
  struct config_generic *conf = guc_variables[i];
  char *setting;

  if ((conf->flags & GUC_NO_SHOW_ALL) ||
   ((conf->flags & GUC_SUPERUSER_ONLY) &&
    !is_member_of_role(GetUserId(), DEFAULT_ROLE_READ_ALL_SETTINGS)))
   continue;


  values[0] = PointerGetDatum(cstring_to_text(conf->name));

  setting = _ShowOption(conf, 1);
  if (setting)
  {
   values[1] = PointerGetDatum(cstring_to_text(setting));
   isnull[1] = 0;
  }
  else
  {
   values[1] = PointerGetDatum(((void*)0));
   isnull[1] = 1;
  }

  values[2] = PointerGetDatum(cstring_to_text(conf->short_desc));


  do_tup_output(tstate, values, isnull);


  pfree(DatumGetPointer(values[0]));
  if (setting)
  {
   pfree(setting);
   pfree(DatumGetPointer(values[1]));
  }
  pfree(DatumGetPointer(values[2]));
 }

 end_tup_output(tstate);
}
