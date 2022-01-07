
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashTable ;


 size_t PHPDBG_BREAK_MAP ;
 int * PHPDBG_G (int ) ;
 int bp ;
 int zend_hash_index_update_ptr (int *,int,int *) ;

__attribute__((used)) static inline void _phpdbg_break_mapping(int id, HashTable *table)
{
 zend_hash_index_update_ptr(&PHPDBG_G(bp)[PHPDBG_BREAK_MAP], id, table);
}
