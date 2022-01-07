
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct db_stmt {int dummy; } ;
struct TYPE_2__ {int i; } ;
struct db_row {TYPE_1__ u; } ;
typedef int JsonNode ;


 scalar_t__ UNLIKELY (int) ;
 int db_stmt_bind (struct db_stmt*,struct db_row*,int) ;
 int db_stmt_step (struct db_stmt*,struct db_row*) ;
 int json_append_member (int *,char*,int ) ;
 int json_mknumber (int) ;
 int * json_mkobject () ;
 int rand () ;

__attribute__((used)) static JsonNode *
db_query(struct db_stmt *stmt, struct db_row rows[], struct db_row results[])
{
    JsonNode *object = ((void*)0);
    int id = rand() % 10000;

    rows[0].u.i = id;

    if (UNLIKELY(!db_stmt_bind(stmt, rows, 1)))
        goto out;

    if (UNLIKELY(!db_stmt_step(stmt, results)))
        goto out;

    object = json_mkobject();
    if (UNLIKELY(!object))
        goto out;

    json_append_member(object, "id", json_mknumber(id));
    json_append_member(object, "randomNumber", json_mknumber(results[0].u.i));

out:
    return object;
}
