
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_ulong ;
typedef int zend_string ;
typedef int UErrorCode ;
typedef int UChar ;
typedef int HashTable ;


 scalar_t__ IS_STRING ;
 int UCHARS (size_t) ;
 int ZVAL_NEW_STR (int *,int *) ;
 size_t Z_STRLEN_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * intl_convert_utf16_to_utf8 (int *,int ,int *) ;
 int zend_hash_index_update (int *,int ,int *) ;
 int zend_hash_update (int *,int *,int *) ;

__attribute__((used)) static void collator_convert_hash_item_from_utf16_to_utf8(
 HashTable* hash, zval * hashData, zend_string* hashKey, zend_ulong hashIndex,
 UErrorCode* status )
{
 const char* old_val;
 size_t old_val_len;
 zend_string* u8str;
 zval znew_val;


 if( Z_TYPE_P( hashData ) != IS_STRING )
  return;

 old_val = Z_STRVAL_P( hashData );
 old_val_len = Z_STRLEN_P( hashData );


 u8str = intl_convert_utf16_to_utf8(
  (UChar*)old_val, UCHARS(old_val_len), status );
 if( !u8str )
  return;


 ZVAL_NEW_STR( &znew_val, u8str);

 if( hashKey )
 {
  zend_hash_update( hash, hashKey, &znew_val);
 }
 else
 {
  zend_hash_index_update( hash, hashIndex, &znew_val);
 }
}
