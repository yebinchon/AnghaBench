
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int* zend_hash_str_find_ptr (void*,char const*,int ) ;

__attribute__((used)) static int param_get_bool(void *ctx, const char *key, int def)
{
 int *elem;
 if ((elem = zend_hash_str_find_ptr(ctx, key, strlen(key))) != ((void*)0)) {
  return *elem;
 } else {
  return def;
 }
}
