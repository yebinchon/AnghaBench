
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int MAXPGPATH ;
 int ObjectIdGetDatum (int ) ;
 int SearchSysCacheExists1 (int ,int ) ;
 int TABLESPACEOID ;
 int TempTablespacePath (char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int pg_ls_dir_files (int ,char*,int) ;

__attribute__((used)) static Datum
pg_ls_tmpdir(FunctionCallInfo fcinfo, Oid tblspc)
{
 char path[MAXPGPATH];

 if (!SearchSysCacheExists1(TABLESPACEOID, ObjectIdGetDatum(tblspc)))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("tablespace with OID %u does not exist",
      tblspc)));

 TempTablespacePath(path, tblspc);
 return pg_ls_dir_files(fcinfo, path, 1);
}
