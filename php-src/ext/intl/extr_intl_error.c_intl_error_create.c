
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intl_error ;


 int * ecalloc (int,int) ;
 int intl_error_init (int *) ;

intl_error* intl_error_create( void )
{
 intl_error* err = ecalloc( 1, sizeof( intl_error ) );

 intl_error_init( err );

 return err;
}
