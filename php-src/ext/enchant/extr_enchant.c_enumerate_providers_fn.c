
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

__attribute__((used)) static void
enumerate_providers_fn (const char * const name,
                        const char * const desc,
                        const char * const file,
                        void * ud)
{
 zval *zdesc = (zval *) ud;
 zval tmp_array;

 array_init(&tmp_array);

 add_assoc_string(&tmp_array, "name", (char *)name);
 add_assoc_string(&tmp_array, "desc", (char *)desc);
 add_assoc_string(&tmp_array, "file", (char *)file);

 if (Z_TYPE_P(zdesc)!=IS_ARRAY) {
  array_init(zdesc);
 }

 add_next_index_zval(zdesc, &tmp_array);
}
