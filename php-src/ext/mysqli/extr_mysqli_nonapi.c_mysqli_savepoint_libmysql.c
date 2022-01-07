
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_bool ;
typedef int MYSQL ;


 int efree (char*) ;
 int mysql_real_query (int *,char*,unsigned int) ;
 unsigned int spprintf (char**,int ,char*,char const* const) ;

__attribute__((used)) static int mysqli_savepoint_libmysql(MYSQL * conn, const char * const name, zend_bool release)
{
 int ret;
 char * query;
 unsigned int query_len = spprintf(&query, 0, release? "RELEASE SAVEPOINT `%s`":"SAVEPOINT `%s`", name);
 ret = mysql_real_query(conn, query, query_len);
 efree(query);
 return ret;
}
