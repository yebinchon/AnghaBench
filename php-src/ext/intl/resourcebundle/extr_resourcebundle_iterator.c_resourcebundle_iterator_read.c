
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UErrorCode ;
struct TYPE_6__ {int current; int currentkey; scalar_t__ is_table; int i; TYPE_1__* subject; } ;
struct TYPE_5__ {int child; int me; } ;
typedef TYPE_1__ ResourceBundle_object ;
typedef TYPE_2__ ResourceBundle_iterator ;


 scalar_t__ U_SUCCESS (int ) ;
 int U_ZERO_ERROR ;
 int ZVAL_UNDEF (int *) ;
 int estrdup (int ) ;
 int resourcebundle_extract_value (int *,TYPE_1__*) ;
 int ures_getByIndex (int ,int ,int ,int *) ;
 int ures_getKey (int ) ;

__attribute__((used)) static void resourcebundle_iterator_read( ResourceBundle_iterator *iterator )
{
 UErrorCode icuerror = U_ZERO_ERROR;
 ResourceBundle_object *rb = iterator->subject;

 rb->child = ures_getByIndex( rb->me, iterator->i, rb->child, &icuerror );

 if (U_SUCCESS(icuerror)) {

  if (iterator->is_table) {
   iterator->currentkey = estrdup( ures_getKey( rb->child ) );
  }
  resourcebundle_extract_value( &iterator->current, rb );
 }
 else {

  ZVAL_UNDEF(&iterator->current);
 }
}
