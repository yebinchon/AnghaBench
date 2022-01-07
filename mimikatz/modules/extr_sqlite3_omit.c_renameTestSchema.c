
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Parse ;


 int MASTER_NAME ;
 int sqlite3NestedParse (int *,char*,char const*,char const*,...) ;

__attribute__((used)) static void renameTestSchema(Parse *pParse, const char *zDb, int bTemp){
  sqlite3NestedParse(pParse,
      "SELECT 1 "
      "FROM \"%w\".%s "
      "WHERE name NOT LIKE 'sqlite_%%'"
      " AND sql NOT LIKE 'create virtual%%'"
      " AND sqlite_rename_test(%Q, sql, type, name, %d)=NULL ",
      zDb, MASTER_NAME,
      zDb, bTemp
  );

  if( bTemp==0 ){
    sqlite3NestedParse(pParse,
        "SELECT 1 "
        "FROM temp.%s "
        "WHERE name NOT LIKE 'sqlite_%%'"
        " AND sql NOT LIKE 'create virtual%%'"
        " AND sqlite_rename_test(%Q, sql, type, name, 1)=NULL ",
        MASTER_NAME, zDb
    );
  }
}
