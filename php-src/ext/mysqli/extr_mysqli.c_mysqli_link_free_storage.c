
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_8__ {scalar_t__ ptr; } ;
typedef TYPE_1__ mysqli_object ;
struct TYPE_10__ {int status; scalar_t__ ptr; } ;
struct TYPE_9__ {scalar_t__ mysql; } ;
typedef TYPE_2__ MY_MYSQL ;
typedef TYPE_3__ MYSQLI_RESOURCE ;


 int MYSQLI_CLOSE_EXPLICIT ;
 int MYSQLI_STATUS_UNKNOWN ;
 int efree (TYPE_2__*) ;
 int mysqli_objects_free_storage (int *) ;
 int php_clear_mysql (TYPE_2__*) ;
 int php_mysqli_close (TYPE_2__*,int ,int ) ;
 TYPE_1__* php_mysqli_fetch_object (int *) ;

__attribute__((used)) static void mysqli_link_free_storage(zend_object *object)
{
 mysqli_object *intern = php_mysqli_fetch_object(object);
 MYSQLI_RESOURCE *my_res = (MYSQLI_RESOURCE *)intern->ptr;

 if (my_res && my_res->ptr) {
  MY_MYSQL *mysql = (MY_MYSQL *)my_res->ptr;
  if (mysql->mysql) {
   php_mysqli_close(mysql, MYSQLI_CLOSE_EXPLICIT, my_res->status);
  }
  php_clear_mysql(mysql);
  efree(mysql);
  my_res->status = MYSQLI_STATUS_UNKNOWN;
 }
 mysqli_objects_free_storage(object);
}
