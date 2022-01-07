
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db {int (* disconnect ) (struct db*) ;} ;


 int stub1 (struct db*) ;

inline void db_disconnect(struct db *db)
{
    db->disconnect(db);
}
