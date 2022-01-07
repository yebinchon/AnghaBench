
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int * val; } ;
typedef TYPE_1__ zend_string ;


 int DELIMITER ;
 int LOC_PRIVATE_TAG ;
 int LOC_VARIANT_TAG ;
 int add_assoc_str (int *,char*,TYPE_1__*) ;
 int add_assoc_string (int *,char*,char*) ;
 scalar_t__ ecalloc (int,int) ;
 int efree (char*) ;
 TYPE_1__* get_icu_value_internal (char const*,char*,int*,int) ;
 TYPE_1__* get_private_subtags (char const*) ;
 char* php_strtok_r (int *,int ,char**) ;
 int sprintf (char*,char*,char*,int ) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 int zend_string_release_ex (TYPE_1__*,int ) ;

__attribute__((used)) static int add_array_entry(const char* loc_name, zval* hash_arr, char* key_name)
{
 zend_string* key_value = ((void*)0);
 char* cur_key_name = ((void*)0);
 char* token = ((void*)0);
 char* last_ptr = ((void*)0);

 int result = 0;
 int cur_result = 0;


 if( strcmp(key_name , LOC_PRIVATE_TAG)==0 ){
  key_value = get_private_subtags( loc_name );
  result = 1;
 } else {
  key_value = get_icu_value_internal( loc_name , key_name , &result,1 );
 }
 if( (strcmp(key_name , LOC_PRIVATE_TAG)==0) ||
  ( strcmp(key_name , LOC_VARIANT_TAG)==0) ){
  if( result > 0 && key_value){
   int cnt = 0;

   token = php_strtok_r( key_value->val , DELIMITER ,&last_ptr);
   if( cur_key_name ){
    efree( cur_key_name);
   }
   cur_key_name = (char*)ecalloc( 25, 25);
   sprintf( cur_key_name , "%s%d", key_name , cnt++);
   add_assoc_string( hash_arr, cur_key_name , token);

   while( (token = php_strtok_r(((void*)0) , DELIMITER , &last_ptr)) && (strlen(token)>1) ){
    sprintf( cur_key_name , "%s%d", key_name , cnt++);
    add_assoc_string( hash_arr, cur_key_name , token);
   }




  }
  if (key_value) {
   zend_string_release_ex(key_value, 0);
  }
 } else {
  if( result == 1 ){
   add_assoc_str( hash_arr, key_name , key_value);
   cur_result = 1;
  } else if (key_value) {
   zend_string_release_ex(key_value, 0);
  }
 }

 if( cur_key_name ){
  efree( cur_key_name);
 }

 return cur_result;
}
