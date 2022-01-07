
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zend_isinf (double) ;
 int zend_isnan (double) ;

__attribute__((used)) static inline int php_json_is_valid_double(double d)
{
 return !zend_isinf(d) && !zend_isnan(d);
}
