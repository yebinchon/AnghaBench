
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* inforec; int user_fn; } ;
struct TYPE_9__ {int fn_addr; } ;
struct TYPE_8__ {int api_version; } ;
typedef TYPE_1__ Pg_finfo_record ;
typedef int PGFunction ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__ FmgrInfo ;
typedef int Datum ;
typedef TYPE_3__ CFuncHashTabEntry ;


 int Anum_pg_proc_probin ;
 int Anum_pg_proc_prosrc ;
 int ERROR ;
 int PROCOID ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 char* TextDatumGetCString (int ) ;
 int elog (int ,char*,int) ;
 TYPE_1__* fetch_finfo_record (void*,char*) ;
 int load_external_function (char*,char*,int,void**) ;
 TYPE_3__* lookup_C_func (int ) ;
 int pfree (char*) ;
 int record_C_func (int ,int ,TYPE_1__ const*) ;

__attribute__((used)) static void
fmgr_info_C_lang(Oid functionId, FmgrInfo *finfo, HeapTuple procedureTuple)
{
 CFuncHashTabEntry *hashentry;
 PGFunction user_fn;
 const Pg_finfo_record *inforec;
 bool isnull;




 hashentry = lookup_C_func(procedureTuple);
 if (hashentry)
 {
  user_fn = hashentry->user_fn;
  inforec = hashentry->inforec;
 }
 else
 {
  Datum prosrcattr,
     probinattr;
  char *prosrcstring,
       *probinstring;
  void *libraryhandle;






  prosrcattr = SysCacheGetAttr(PROCOID, procedureTuple,
          Anum_pg_proc_prosrc, &isnull);
  if (isnull)
   elog(ERROR, "null prosrc for C function %u", functionId);
  prosrcstring = TextDatumGetCString(prosrcattr);

  probinattr = SysCacheGetAttr(PROCOID, procedureTuple,
          Anum_pg_proc_probin, &isnull);
  if (isnull)
   elog(ERROR, "null probin for C function %u", functionId);
  probinstring = TextDatumGetCString(probinattr);


  user_fn = load_external_function(probinstring, prosrcstring, 1,
           &libraryhandle);


  inforec = fetch_finfo_record(libraryhandle, prosrcstring);


  record_C_func(procedureTuple, user_fn, inforec);

  pfree(prosrcstring);
  pfree(probinstring);
 }

 switch (inforec->api_version)
 {
  case 1:

   finfo->fn_addr = user_fn;
   break;
  default:

   elog(ERROR, "unrecognized function API version: %d",
     inforec->api_version);
   break;
 }
}
