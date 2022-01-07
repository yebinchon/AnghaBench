
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intl_error ;
typedef int UErrorCode ;


 int intl_error_set_code (int *,int ) ;

void intl_errors_set_code( intl_error* err, UErrorCode err_code )
{
 if(err) {
  intl_error_set_code( err, err_code );
 }
 intl_error_set_code( ((void*)0), err_code );
}
