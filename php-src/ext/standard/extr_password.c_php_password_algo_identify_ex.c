
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_5__ {int (* valid ) (int const*) ;} ;
typedef TYPE_1__ php_password_algo ;


 int * php_password_algo_extract_ident (int const*) ;
 TYPE_1__* php_password_algo_find (int *) ;
 int stub1 (int const*) ;
 int zend_string_release (int *) ;

const php_password_algo* php_password_algo_identify_ex(const zend_string* hash, const php_password_algo *default_algo) {
 const php_password_algo *algo;
 zend_string *ident = php_password_algo_extract_ident(hash);

 if (!ident) {
  return default_algo;
 }

 algo = php_password_algo_find(ident);
 zend_string_release(ident);
 return (!algo || (algo->valid && !algo->valid(hash))) ? default_algo : algo;
}
