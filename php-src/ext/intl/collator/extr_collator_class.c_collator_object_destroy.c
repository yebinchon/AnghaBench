
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ucoll; } ;
typedef TYPE_1__ Collator_object ;


 int COLLATOR_ERROR_P (TYPE_1__*) ;
 int intl_error_reset (int ) ;
 int ucol_close (int *) ;

void collator_object_destroy( Collator_object* co )
{
 if( !co )
  return;

 if( co->ucoll )
 {
  ucol_close( co->ucoll );
  co->ucoll = ((void*)0);
 }

 intl_error_reset( COLLATOR_ERROR_P( co ) );
}
