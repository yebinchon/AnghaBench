
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_17__ {int ce; } ;
typedef TYPE_1__ zend_object ;
typedef int UTransliterator ;
struct TYPE_18__ {int * utrans; int zo; } ;
typedef TYPE_2__ Transliterator_object ;
struct TYPE_16__ {TYPE_1__* (* create_object ) (int ) ;} ;


 int E_WARNING ;
 int INTL_DATA_ERROR_CODE (TYPE_2__*) ;
 int * INTL_DATA_ERROR_P (TYPE_2__*) ;
 int TRANSLITERATOR_ERROR_CODE (TYPE_2__*) ;
 int TRANSLITERATOR_ERROR_CODE_P (TYPE_2__*) ;
 int TRANSLITERATOR_ERROR_P (TYPE_2__*) ;
 TYPE_10__* Transliterator_ce_ptr ;
 scalar_t__ U_FAILURE (int ) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_OBJ (int *,TYPE_1__*) ;
 int * intl_error_get_message (int ) ;
 int intl_error_reset (int *) ;
 int intl_error_set_code (int *,int ) ;
 int intl_errors_set_custom_msg (int ,char*,int ) ;
 int php_error_docref (int *,int ,char*) ;
 TYPE_2__* php_intl_transliterator_fetch_object (TYPE_1__*) ;
 TYPE_1__* stub1 (int ) ;
 int transliterator_object_construct (int *,int *,int ) ;
 int transliterator_object_destroy (TYPE_2__*) ;
 int * utrans_clone (int *,int ) ;
 int zend_objects_clone_members (int *,int *) ;
 int zend_string_free (int *) ;
 int zend_throw_error (int *,char*,int ) ;

__attribute__((used)) static zend_object *Transliterator_clone_obj( zend_object *object )
{
 Transliterator_object *to_orig,
                       *to_new;
 zend_object *ret_val;
 intl_error_reset( ((void*)0) );

 to_orig = php_intl_transliterator_fetch_object( object );
 intl_error_reset( INTL_DATA_ERROR_P( to_orig ) );
 ret_val = Transliterator_ce_ptr->create_object( object->ce );
 to_new = php_intl_transliterator_fetch_object( ret_val );

 zend_objects_clone_members( &to_new->zo, &to_orig->zo );

 if( to_orig->utrans != ((void*)0) )
 {
  zval tempz;


  UTransliterator *utrans = utrans_clone( to_orig->utrans, TRANSLITERATOR_ERROR_CODE_P( to_orig ) );

  if( U_FAILURE( TRANSLITERATOR_ERROR_CODE( to_orig ) ) )
   goto err;

  ZVAL_OBJ(&tempz, ret_val);
  transliterator_object_construct( &tempz, utrans,
   TRANSLITERATOR_ERROR_CODE_P( to_orig ) );

  if( U_FAILURE( TRANSLITERATOR_ERROR_CODE( to_orig ) ) )
  {
   zend_string *err_msg;
err:

   if( utrans != ((void*)0) )
    transliterator_object_destroy( to_new );



   intl_error_set_code( ((void*)0), INTL_DATA_ERROR_CODE( to_orig ) );
   intl_errors_set_custom_msg( TRANSLITERATOR_ERROR_P( to_orig ),
    "Could not clone transliterator", 0 );

   err_msg = intl_error_get_message( TRANSLITERATOR_ERROR_P( to_orig ) );
   zend_throw_error( ((void*)0), "%s", ZSTR_VAL(err_msg) );
   zend_string_free( err_msg );

  }
 }
 else
 {

  php_error_docref( ((void*)0), E_WARNING,
   "Cloning unconstructed transliterator." );
 }

 return ret_val;
}
