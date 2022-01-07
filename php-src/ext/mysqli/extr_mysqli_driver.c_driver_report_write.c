
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mysqli_object ;
typedef int MyG ;


 int SUCCESS ;
 int Z_LVAL_P (int *) ;

__attribute__((used)) static int driver_report_write(mysqli_object *obj, zval *value)
{
 MyG(report_mode) = Z_LVAL_P(value);


 return SUCCESS;
}
