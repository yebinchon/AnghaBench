
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ DEFAULTTABLESPACE_OID ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 scalar_t__ InvalidOid ;
 int MAXPGPATH ;
 char* PG_TEMP_FILES_DIR ;
 char* TABLESPACE_VERSION_DIRECTORY ;
 int snprintf (char*,int ,char*,scalar_t__,...) ;

void
TempTablespacePath(char *path, Oid tablespace)
{





 if (tablespace == InvalidOid ||
  tablespace == DEFAULTTABLESPACE_OID ||
  tablespace == GLOBALTABLESPACE_OID)
  snprintf(path, MAXPGPATH, "base/%s", PG_TEMP_FILES_DIR);
 else
 {

  snprintf(path, MAXPGPATH, "pg_tblspc/%u/%s/%s",
     tablespace, TABLESPACE_VERSION_DIRECTORY,
     PG_TEMP_FILES_DIR);
 }
}
