
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashTable ;


 int strlen (char*) ;
 char* strrchr (char*,char) ;
 void* zend_hash_str_find_ptr (int *,char*,int ) ;

__attribute__((used)) static void* schema_find_by_ref(HashTable *ht, char *ref)
{
 void *tmp;

 if ((tmp = zend_hash_str_find_ptr(ht, ref, strlen(ref))) != ((void*)0)) {
  return tmp;
 } else {
  ref = strrchr(ref, ':');
  if (ref) {
   if ((tmp = zend_hash_str_find_ptr(ht, ref, strlen(ref))) != ((void*)0)) {
    return tmp;
   }
  }
 }
 return ((void*)0);
}
