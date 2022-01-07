
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MYSQL ;


 int MYSQLI_CLOSE_IMPLICIT ;
 int mysqli_close (int *,int ) ;

void php_mysqli_dtor_p_elements(void *data)
{
 MYSQL *mysql = (MYSQL *)data;
 mysqli_close(mysql, MYSQLI_CLOSE_IMPLICIT);
}
