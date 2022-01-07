
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prepare; int disconnect; } ;
struct db_sqlite {TYPE_1__ base; int sqlite; } ;
struct db {int dummy; } ;


 int SQLITE_OK ;
 int SQLITE_OPEN_READONLY ;
 int db_disconnect_sqlite ;
 int db_prepare_sqlite ;
 int free (struct db_sqlite*) ;
 struct db_sqlite* malloc (int) ;
 int sqlite3_exec (int ,char const*,int *,int *,int *) ;
 int sqlite3_open_v2 (char const*,int *,int,int *) ;

struct db *db_connect_sqlite(const char *path, bool read_only, const char *pragmas[])
{
    struct db_sqlite *db_sqlite = malloc(sizeof(*db_sqlite));

    if (!db_sqlite)
        return ((void*)0);

    int flags = read_only ? SQLITE_OPEN_READONLY : 0;
    int ret = sqlite3_open_v2(path, &db_sqlite->sqlite, flags, ((void*)0));
    if (ret != SQLITE_OK) {
        free(db_sqlite);
        return ((void*)0);
    }

    if (pragmas) {
        for (size_t p = 0; pragmas[p]; p++)
            sqlite3_exec(db_sqlite->sqlite, pragmas[p], ((void*)0), ((void*)0), ((void*)0));
    }

    db_sqlite->base.disconnect = db_disconnect_sqlite;
    db_sqlite->base.prepare = db_prepare_sqlite;

    return (struct db *)db_sqlite;
}
