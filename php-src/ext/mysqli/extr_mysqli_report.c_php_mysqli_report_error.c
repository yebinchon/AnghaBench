
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int php_mysqli_throw_sql_exception (char*,int,char*,char const*) ;

void php_mysqli_report_error(const char *sqlstate, int errorno, const char *error)
{
 php_mysqli_throw_sql_exception((char *)sqlstate, errorno, "%s", error);
}
