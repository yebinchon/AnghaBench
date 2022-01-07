
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_array_object ;
typedef int HashTable ;


 int ** spl_array_get_hash_table_ptr (int *) ;

__attribute__((used)) static inline HashTable *spl_array_get_hash_table(spl_array_object* intern) {
 return *spl_array_get_hash_table_ptr(intern);
}
