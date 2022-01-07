
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intl_error ;


 int intl_error_reset (int *) ;

void intl_errors_reset( intl_error* err )
{
 if(err) {
  intl_error_reset( err );
 }
 intl_error_reset( ((void*)0) );
}
