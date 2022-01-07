
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_array_object ;
typedef int HashTable ;


 int * spl_array_get_hash_table (int *) ;
 int spl_array_next_ex (int *,int *) ;

__attribute__((used)) static int spl_array_next(spl_array_object *intern)
{
 HashTable *aht = spl_array_get_hash_table(intern);

 return spl_array_next_ex(intern, aht);

}
