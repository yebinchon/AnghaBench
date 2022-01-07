
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_constant ;


 int EG (int ) ;
 int current_execute_data ;
 int memcmp (char const*,char*,int) ;
 size_t strlen (char const*) ;
 int zend_constants ;
 char* zend_get_executed_filename () ;
 int * zend_hash_find_ptr (int ,int *) ;
 int * zend_mangle_property_name (char const*,int,char const*,size_t,int ) ;
 int zend_string_efree (int *) ;

__attribute__((used)) static zend_constant *zend_get_halt_offset_constant(const char *name, size_t name_len)
{
 zend_constant *c;
 static const char haltoff[] = "__COMPILER_HALT_OFFSET__";

 if (!EG(current_execute_data)) {
  return ((void*)0);
 } else if (name_len == sizeof("__COMPILER_HALT_OFFSET__")-1 &&
           !memcmp(name, "__COMPILER_HALT_OFFSET__", sizeof("__COMPILER_HALT_OFFSET__")-1)) {
  const char *cfilename;
  zend_string *haltname;
  size_t clen;

  cfilename = zend_get_executed_filename();
  clen = strlen(cfilename);

  haltname = zend_mangle_property_name(haltoff,
   sizeof("__COMPILER_HALT_OFFSET__") - 1, cfilename, clen, 0);
  c = zend_hash_find_ptr(EG(zend_constants), haltname);
  zend_string_efree(haltname);
  return c;
 } else {
  return ((void*)0);
 }
}
