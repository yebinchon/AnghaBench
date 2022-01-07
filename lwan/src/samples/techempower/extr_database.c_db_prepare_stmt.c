
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_stmt {int dummy; } ;
struct db {struct db_stmt* (* prepare ) (struct db const*,char const*,size_t const) ;} ;


 struct db_stmt* stub1 (struct db const*,char const*,size_t const) ;

inline struct db_stmt *db_prepare_stmt(const struct db *db, const char *sql,
    const size_t sql_len)
{
    return db->prepare(db, sql, sql_len);
}
