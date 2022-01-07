
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 scalar_t__ is_stream_path (int ) ;
 int * zend_resolve_path (int ,int ) ;

__attribute__((used)) static zend_string *preload_resolve_path(zend_string *filename)
{
 if (is_stream_path(ZSTR_VAL(filename))) {
  return ((void*)0);
 }
 return zend_resolve_path(ZSTR_VAL(filename), ZSTR_LEN(filename));
}
