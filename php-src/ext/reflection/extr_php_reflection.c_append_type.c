
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_type ;


 int Z_ARRVAL_P (int *) ;
 int reflection_type_factory (int ,int *,int ) ;
 int zend_hash_next_index_insert (int ,int *) ;

__attribute__((used)) static void append_type(zval *return_value, zend_type type) {
 zval reflection_type;
 reflection_type_factory(type, &reflection_type, 0);
 zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &reflection_type);
}
