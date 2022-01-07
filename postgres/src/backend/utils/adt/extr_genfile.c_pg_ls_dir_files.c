
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int st_mtime; scalar_t__ st_size; int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int path ;
typedef int nulls ;
typedef int int64 ;
struct TYPE_8__ {char const* location; int dirdesc; } ;
typedef TYPE_1__ directory_fctx ;
typedef int TupleDesc ;
struct TYPE_9__ {int tuple_desc; TYPE_1__* user_fctx; int multi_call_memory_ctx; } ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef int FunctionCallInfo ;
typedef TYPE_2__ FuncCallContext ;
typedef int Datum ;
typedef int AttrNumber ;


 int AllocateDir (char const*) ;
 int BlessTupleDesc (int ) ;
 int CStringGetTextDatum (char*) ;
 int CreateTemplateTupleDesc (int) ;
 scalar_t__ ENOENT ;
 int ERROR ;
 int FreeDir (int ) ;
 int HeapTupleGetDatum (int ) ;
 int INT8OID ;
 int Int64GetDatum (int ) ;
 int MAXPGPATH ;
 int MemoryContextSwitchTo (int ) ;
 struct dirent* ReadDir (int ,char const*) ;
 TYPE_2__* SRF_FIRSTCALL_INIT () ;
 scalar_t__ SRF_IS_FIRSTCALL () ;
 TYPE_2__* SRF_PERCALL_SETUP () ;
 int SRF_RETURN_DONE (TYPE_2__*) ;
 int SRF_RETURN_NEXT (TYPE_2__*,int ) ;
 int S_ISREG (int ) ;
 int TEXTOID ;
 int TIMESTAMPTZOID ;
 int TimestampTzGetDatum (int ) ;
 int TupleDescInitEntry (int ,int ,char*,int ,int,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 int heap_form_tuple (int ,int *,int*) ;
 int memset (int*,int ,int) ;
 TYPE_1__* palloc (int) ;
 char const* pstrdup (char const*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int time_t_to_timestamptz (int ) ;

__attribute__((used)) static Datum
pg_ls_dir_files(FunctionCallInfo fcinfo, const char *dir, bool missing_ok)
{
 FuncCallContext *funcctx;
 struct dirent *de;
 directory_fctx *fctx;

 if (SRF_IS_FIRSTCALL())
 {
  MemoryContext oldcontext;
  TupleDesc tupdesc;

  funcctx = SRF_FIRSTCALL_INIT();
  oldcontext = MemoryContextSwitchTo(funcctx->multi_call_memory_ctx);

  fctx = palloc(sizeof(directory_fctx));

  tupdesc = CreateTemplateTupleDesc(3);
  TupleDescInitEntry(tupdesc, (AttrNumber) 1, "name",
         TEXTOID, -1, 0);
  TupleDescInitEntry(tupdesc, (AttrNumber) 2, "size",
         INT8OID, -1, 0);
  TupleDescInitEntry(tupdesc, (AttrNumber) 3, "modification",
         TIMESTAMPTZOID, -1, 0);
  funcctx->tuple_desc = BlessTupleDesc(tupdesc);

  fctx->location = pstrdup(dir);
  fctx->dirdesc = AllocateDir(fctx->location);

  if (!fctx->dirdesc)
  {
   if (missing_ok && errno == ENOENT)
   {
    MemoryContextSwitchTo(oldcontext);
    SRF_RETURN_DONE(funcctx);
   }
   else
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not open directory \"%s\": %m",
        fctx->location)));
  }

  funcctx->user_fctx = fctx;
  MemoryContextSwitchTo(oldcontext);
 }

 funcctx = SRF_PERCALL_SETUP();
 fctx = (directory_fctx *) funcctx->user_fctx;

 while ((de = ReadDir(fctx->dirdesc, fctx->location)) != ((void*)0))
 {
  Datum values[3];
  bool nulls[3];
  char path[MAXPGPATH * 2];
  struct stat attrib;
  HeapTuple tuple;


  if (de->d_name[0] == '.')
   continue;


  snprintf(path, sizeof(path), "%s/%s", fctx->location, de->d_name);
  if (stat(path, &attrib) < 0)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not stat directory \"%s\": %m", dir)));


  if (!S_ISREG(attrib.st_mode))
   continue;

  values[0] = CStringGetTextDatum(de->d_name);
  values[1] = Int64GetDatum((int64) attrib.st_size);
  values[2] = TimestampTzGetDatum(time_t_to_timestamptz(attrib.st_mtime));
  memset(nulls, 0, sizeof(nulls));

  tuple = heap_form_tuple(funcctx->tuple_desc, values, nulls);
  SRF_RETURN_NEXT(funcctx, HeapTupleGetDatum(tuple));
 }

 FreeDir(fctx->dirdesc);
 SRF_RETURN_DONE(funcctx);
}
