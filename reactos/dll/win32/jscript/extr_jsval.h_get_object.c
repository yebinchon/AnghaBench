
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int IDispatch ;


 int * __JSVAL_OBJ (int ) ;

__attribute__((used)) static inline IDispatch *get_object(jsval_t v)
{
    return __JSVAL_OBJ(v);
}
