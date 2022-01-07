
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msgformat_data ;


 int * ecalloc (int,int) ;
 int msgformat_data_init (int *) ;

msgformat_data* msgformat_data_create( void )
{
 msgformat_data* mf_data = ecalloc( 1, sizeof(msgformat_data) );

 msgformat_data_init( mf_data );

 return mf_data;
}
