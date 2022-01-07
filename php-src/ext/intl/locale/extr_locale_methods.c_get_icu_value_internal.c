
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char const* val; int len; } ;
typedef TYPE_1__ zend_string ;
typedef scalar_t__ zend_off_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ UErrorCode ;


 int INTL_MAX_LOCALE_LEN ;
 int LOC_CANONICALIZE_TAG ;
 int LOC_GRANDFATHERED ;
 int LOC_LANG_TAG ;
 int LOC_REGION_TAG ;
 int LOC_SCRIPT_TAG ;
 int LOC_VARIANT_TAG ;
 scalar_t__ U_BUFFER_OVERFLOW_ERROR ;
 scalar_t__ U_FAILURE (scalar_t__) ;
 scalar_t__ U_ZERO_ERROR ;
 int efree (char*) ;
 char* estrdup (char const*) ;
 char* estrndup (char const*,scalar_t__) ;
 scalar_t__ findOffset (int ,char const*) ;
 scalar_t__ getSingletonPos (char const*) ;
 int isIDPrefix (char const*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char const*) ;
 scalar_t__ uloc_canonicalize (char*,char const*,scalar_t__,scalar_t__*) ;
 scalar_t__ uloc_getCountry (char*,char const*,scalar_t__,scalar_t__*) ;
 scalar_t__ uloc_getLanguage (char*,char const*,scalar_t__,scalar_t__*) ;
 scalar_t__ uloc_getScript (char*,char const*,scalar_t__,scalar_t__*) ;
 scalar_t__ uloc_getVariant (char*,char const*,scalar_t__,scalar_t__*) ;
 TYPE_1__* zend_string_alloc (scalar_t__,int ) ;
 TYPE_1__* zend_string_init (char const*,int,int ) ;
 TYPE_1__* zend_string_realloc (TYPE_1__*,scalar_t__,int ) ;
 int zend_string_release_ex (TYPE_1__*,int ) ;

__attribute__((used)) static zend_string* get_icu_value_internal( const char* loc_name , char* tag_name, int* result , int fromParseLocale)
{
 zend_string* tag_value = ((void*)0);
 int32_t tag_value_len = 512;

 char* mod_loc_name = ((void*)0);

 int32_t buflen = 512;
 UErrorCode status = U_ZERO_ERROR;

 if (strlen(loc_name) > INTL_MAX_LOCALE_LEN) {
  return ((void*)0);
 }

 if( strcmp(tag_name, LOC_CANONICALIZE_TAG) != 0 ){

  zend_off_t grOffset = findOffset( LOC_GRANDFATHERED , loc_name );
  if( grOffset >= 0 ){
   if( strcmp(tag_name , LOC_LANG_TAG)==0 ){
    return zend_string_init(loc_name, strlen(loc_name), 0);
   } else {

    return ((void*)0);
   }
  }

 if( fromParseLocale==1 ){
  zend_off_t singletonPos = 0;


  if( strcmp(tag_name , LOC_LANG_TAG)==0 ){
   if( strlen(loc_name)>1 && (isIDPrefix(loc_name) == 1) ){
    return zend_string_init(loc_name, strlen(loc_name), 0);
   }
  }

  singletonPos = getSingletonPos( loc_name );
  if( singletonPos == 0){


   return ((void*)0);
  } else if( singletonPos > 0 ){


   mod_loc_name = estrndup ( loc_name , singletonPos-1);
  }
 }

 }

 if( mod_loc_name == ((void*)0)){
  mod_loc_name = estrdup(loc_name );
 }


 do{
  if (tag_value) {
   tag_value = zend_string_realloc( tag_value , buflen, 0);
  } else {
   tag_value = zend_string_alloc( buflen, 0);
  }
  tag_value_len = buflen;

  if( strcmp(tag_name , LOC_SCRIPT_TAG)==0 ){
   buflen = uloc_getScript ( mod_loc_name , tag_value->val , tag_value_len , &status);
  }
  if( strcmp(tag_name , LOC_LANG_TAG )==0 ){
   buflen = uloc_getLanguage ( mod_loc_name , tag_value->val , tag_value_len , &status);
  }
  if( strcmp(tag_name , LOC_REGION_TAG)==0 ){
   buflen = uloc_getCountry ( mod_loc_name , tag_value->val , tag_value_len , &status);
  }
  if( strcmp(tag_name , LOC_VARIANT_TAG)==0 ){
   buflen = uloc_getVariant ( mod_loc_name , tag_value->val , tag_value_len , &status);
  }
  if( strcmp(tag_name , LOC_CANONICALIZE_TAG)==0 ){
   buflen = uloc_canonicalize ( mod_loc_name , tag_value->val , tag_value_len , &status);
  }

  if( U_FAILURE( status ) ) {
   if( status == U_BUFFER_OVERFLOW_ERROR ) {
    status = U_ZERO_ERROR;
    buflen++;
    continue;
   }


   *result = 0;
   if( tag_value ){
    zend_string_release_ex( tag_value, 0 );
   }
   if( mod_loc_name ){
    efree( mod_loc_name);
   }
   return ((void*)0);
  }
 } while( buflen > tag_value_len );

 if( buflen ==0 ){

  *result = -1;
  if( tag_value ){
   zend_string_release_ex( tag_value, 0 );
  }
  if( mod_loc_name ){
   efree( mod_loc_name);
  }
  return ((void*)0);
 } else {
  *result = 1;
 }

 if( mod_loc_name ){
  efree( mod_loc_name);
 }

 tag_value->len = strlen(tag_value->val);
 return tag_value;
}
