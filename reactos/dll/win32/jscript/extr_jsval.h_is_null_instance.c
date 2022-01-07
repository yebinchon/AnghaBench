
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int BOOL ;


 int __JSVAL_OBJ (int ) ;
 scalar_t__ is_null (int ) ;
 scalar_t__ is_object_instance (int ) ;

__attribute__((used)) static inline BOOL is_null_instance(jsval_t v)
{
    return is_null(v) || (is_object_instance(v) && !__JSVAL_OBJ(v));
}
