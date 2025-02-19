
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int add_assoc_string (int *,char*,char*) ;
 int array_init (int *) ;

__attribute__((used)) static void
describe_dict_fn (const char * const lang,
                  const char * const name,
                  const char * const desc,
                  const char * const file,
                  void * ud)
{
 zval *zdesc = (zval *) ud;
 array_init(zdesc);
 add_assoc_string(zdesc, "lang", (char *)lang);
 add_assoc_string(zdesc, "name", (char *)name);
 add_assoc_string(zdesc, "desc", (char *)desc);
 add_assoc_string(zdesc, "file", (char *)file);
}
