
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int VARIANT ;


 int * __JSVAL_VAR (int ) ;

__attribute__((used)) static inline VARIANT *get_variant(jsval_t v)
{
    return __JSVAL_VAR(v);
}
