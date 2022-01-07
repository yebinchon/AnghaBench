
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ Z_TYPE_P (int *) ;
 int add_assoc_string (int *,char*,char*) ;
 int add_next_index_zval (int *,int *) ;
 int array_init (int *) ;

__attribute__((used)) static void php_enchant_list_dicts_fn( const char * const lang_tag,
     const char * const provider_name, const char * const provider_desc,
  const char * const provider_file, void * ud)
{
 zval *zdesc = (zval *) ud;
 zval tmp_array;

 array_init(&tmp_array);
 add_assoc_string(&tmp_array, "lang_tag", (char *)lang_tag);
 add_assoc_string(&tmp_array, "provider_name", (char *)provider_name);
 add_assoc_string(&tmp_array, "provider_desc", (char *)provider_desc);
 add_assoc_string(&tmp_array, "provider_file", (char *)provider_file);

 if (Z_TYPE_P(zdesc) != IS_ARRAY) {
  array_init(zdesc);
 }
 add_next_index_zval(zdesc, &tmp_array);

}
