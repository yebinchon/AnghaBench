
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Transliterator_object ;


 int TRANSLITERATOR_ERROR_P (int *) ;
 int intl_error_init (int ) ;

__attribute__((used)) static void transliterator_object_init( Transliterator_object* to )
{
 if( !to )
  return;

 intl_error_init( TRANSLITERATOR_ERROR_P( to ) );
}
