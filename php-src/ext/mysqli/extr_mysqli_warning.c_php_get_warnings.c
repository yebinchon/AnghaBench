
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef int * MYSQL_ROW ;
typedef int MYSQL_RES ;
typedef TYPE_1__ MYSQLI_WARNING ;
typedef int MYSQL ;


 int atoi (int ) ;
 int * mysql_fetch_row (int *) ;
 int mysql_free_result (int *) ;
 scalar_t__ mysql_real_query (int *,char*,int) ;
 int * mysql_store_result (int *) ;
 TYPE_1__* php_new_warning (int ,int ) ;

MYSQLI_WARNING *php_get_warnings(MYSQL *mysql)
{
 MYSQLI_WARNING *w, *first = ((void*)0), *prev = ((void*)0);
 MYSQL_RES *result;
 MYSQL_ROW row;

 if (mysql_real_query(mysql, "SHOW WARNINGS", 13)) {
  return ((void*)0);
 }

 result = mysql_store_result(mysql);

 while ((row = mysql_fetch_row(result))) {
  w = php_new_warning(row[2], atoi(row[1]));
  if (!first) {
   first = w;
  }
  if (prev) {
   prev->next = w;
  }
  prev = w;
 }
 mysql_free_result(result);
 return first;
}
