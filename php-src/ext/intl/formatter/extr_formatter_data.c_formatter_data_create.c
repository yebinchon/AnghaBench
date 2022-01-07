
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int formatter_data ;


 int * ecalloc (int,int) ;
 int formatter_data_init (int *) ;

formatter_data* formatter_data_create( void )
{
 formatter_data* nf_data = ecalloc( 1, sizeof(formatter_data) );

 formatter_data_init( nf_data );

 return nf_data;
}
