
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Collator_object ;


 int COLLATOR_ERROR_P (int *) ;
 int intl_error_init (int ) ;

void collator_object_init( Collator_object* co )
{
 if( !co )
  return;

 intl_error_init( COLLATOR_ERROR_P( co ) );
}
