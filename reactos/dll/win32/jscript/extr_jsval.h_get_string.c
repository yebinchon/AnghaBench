
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int jsstr_t ;


 int * __JSVAL_STR (int ) ;

__attribute__((used)) static inline jsstr_t *get_string(jsval_t v)
{
    return __JSVAL_STR(v);
}
