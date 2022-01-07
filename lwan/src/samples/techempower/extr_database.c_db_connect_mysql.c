
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prepare; int disconnect; } ;
struct db_mysql {int con; TYPE_1__ base; } ;
struct db {int dummy; } ;


 int db_disconnect_mysql ;
 int db_prepare_mysql ;
 int free (struct db_mysql*) ;
 struct db_mysql* malloc (int) ;
 int mysql_close (int ) ;
 int mysql_init (int *) ;
 int mysql_real_connect (int ,char const*,char const*,char const*,char const*,int ,int *,int ) ;
 scalar_t__ mysql_set_character_set (int ,char*) ;

struct db *db_connect_mysql(const char *host, const char *user, const char *pass,
        const char *database)
{
    struct db_mysql *db_mysql = malloc(sizeof(*db_mysql));

    if (!db_mysql)
        return ((void*)0);

    db_mysql->con = mysql_init(((void*)0));
    if (!db_mysql->con) {
        free(db_mysql);
        return ((void*)0);
    }

    if (!mysql_real_connect(db_mysql->con, host, user, pass, database, 0, ((void*)0), 0))
        goto error;

    if (mysql_set_character_set(db_mysql->con, "utf8"))
        goto error;

    db_mysql->base.disconnect = db_disconnect_mysql;
    db_mysql->base.prepare = db_prepare_mysql;

    return (struct db *)db_mysql;

error:
    mysql_close(db_mysql->con);
    free(db_mysql);
    return ((void*)0);
}
