
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ast ;
typedef int uint32_t ;



__attribute__((used)) static inline size_t zend_ast_size(uint32_t children) {
 return sizeof(zend_ast) - sizeof(zend_ast *) + sizeof(zend_ast *) * children;
}
