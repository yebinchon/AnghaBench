
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int timelib_tzinfo ;


 scalar_t__ Z_PTR_P (int *) ;
 int timelib_tzinfo_dtor (int *) ;

__attribute__((used)) static void _php_date_tzinfo_dtor(zval *zv)
{
 timelib_tzinfo *tzi = (timelib_tzinfo*)Z_PTR_P(zv);

 timelib_tzinfo_dtor(tzi);
}
