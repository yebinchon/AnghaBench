
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef scalar_t__ int32_t ;
typedef int UTransliterator ;
typedef int UErrorCode ;
typedef int UChar ;
struct TYPE_2__ {int * utrans; } ;
typedef TYPE_1__ Transliterator_object ;


 int FAILURE ;
 int GC_DELREF (int *) ;
 int SUCCESS ;
 int TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK ;
 int Transliterator_ce_ptr ;
 int ZVAL_NEW_STR (int *,int *) ;
 int assert (int ) ;
 int * intl_convert_utf16_to_utf8 (int const*,int,int *) ;
 int * utrans_getUnicodeID (int *,scalar_t__*) ;
 int zend_update_property (int ,int *,char*,int,int *) ;

int transliterator_object_construct( zval *object,
          UTransliterator *utrans,
          UErrorCode *status )
{
 const UChar *ustr_id;
 int32_t ustr_id_len;
 zend_string *u8str;
 zval tmp;
 Transliterator_object *to;

 TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK;

 assert( to->utrans == ((void*)0) );



 to->utrans = utrans;

 ustr_id = utrans_getUnicodeID( utrans, &ustr_id_len );
 u8str = intl_convert_utf16_to_utf8(ustr_id, (int ) ustr_id_len, status );
 if( !u8str )
 {
  return FAILURE;
 }

 ZVAL_NEW_STR(&tmp, u8str);
 zend_update_property(Transliterator_ce_ptr, object,
  "id", sizeof( "id" ) - 1, &tmp );
 GC_DELREF(u8str);
 return SUCCESS;
}
