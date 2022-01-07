
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_LoadExtFunc ;
 TYPE_1__* sqlite3_context_db_handle (int *) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_load_extension (TYPE_1__*,char const*,char const*,char**) ;
 int sqlite3_result_error (int *,char*,int) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void loadExt(sqlite3_context *context, int argc, sqlite3_value **argv){
  const char *zFile = (const char *)sqlite3_value_text(argv[0]);
  const char *zProc;
  sqlite3 *db = sqlite3_context_db_handle(context);
  char *zErrMsg = 0;




  if( (db->flags & SQLITE_LoadExtFunc)==0 ){
    sqlite3_result_error(context, "not authorized", -1);
    return;
  }

  if( argc==2 ){
    zProc = (const char *)sqlite3_value_text(argv[1]);
  }else{
    zProc = 0;
  }
  if( zFile && sqlite3_load_extension(db, zFile, zProc, &zErrMsg) ){
    sqlite3_result_error(context, zErrMsg, -1);
    sqlite3_free(zErrMsg);
  }
}
