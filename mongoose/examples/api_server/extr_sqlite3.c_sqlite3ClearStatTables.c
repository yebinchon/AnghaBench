
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zTab ;
struct TYPE_8__ {TYPE_1__* aDb; } ;
struct TYPE_7__ {TYPE_4__* db; } ;
struct TYPE_6__ {char* zName; } ;
typedef TYPE_2__ Parse ;


 scalar_t__ sqlite3FindTable (TYPE_4__*,char*,char const*) ;
 int sqlite3NestedParse (TYPE_2__*,char*,char const*,char*,char const*,char const*) ;
 int sqlite3_snprintf (int,char*,char*,int) ;

__attribute__((used)) static void sqlite3ClearStatTables(
  Parse *pParse,
  int iDb,
  const char *zType,
  const char *zName
){
  int i;
  const char *zDbName = pParse->db->aDb[iDb].zName;
  for(i=1; i<=3; i++){
    char zTab[24];
    sqlite3_snprintf(sizeof(zTab),zTab,"sqlite_stat%d",i);
    if( sqlite3FindTable(pParse->db, zTab, zDbName) ){
      sqlite3NestedParse(pParse,
        "DELETE FROM %Q.%s WHERE %s=%Q",
        zDbName, zTab, zType, zName
      );
    }
  }
}
