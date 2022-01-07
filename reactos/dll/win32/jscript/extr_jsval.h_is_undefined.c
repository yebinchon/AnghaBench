
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int BOOL ;


 scalar_t__ JSV_UNDEFINED ;
 scalar_t__ __JSVAL_TYPE (int ) ;

__attribute__((used)) static inline BOOL is_undefined(jsval_t v)
{
    return __JSVAL_TYPE(v) == JSV_UNDEFINED;
}
