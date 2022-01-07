
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dateformat_data ;


 int dateformat_data_init (int *) ;
 int * ecalloc (int,int) ;

dateformat_data* dateformat_data_create( void )
{
 dateformat_data* datef_data = ecalloc( 1, sizeof(dateformat_data) );

 dateformat_data_init( datef_data );

 return datef_data;
}
