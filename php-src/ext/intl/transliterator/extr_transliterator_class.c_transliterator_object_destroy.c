
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * utrans; } ;
typedef TYPE_1__ Transliterator_object ;


 int TRANSLITERATOR_ERROR_P (TYPE_1__*) ;
 int intl_error_reset (int ) ;
 int utrans_close (int *) ;

__attribute__((used)) static void transliterator_object_destroy( Transliterator_object* to )
{
 if( !to )
  return;

 if( to->utrans )
 {
  utrans_close( to->utrans );
  to->utrans = ((void*)0);
 }

 intl_error_reset( TRANSLITERATOR_ERROR_P( to ) );
}
