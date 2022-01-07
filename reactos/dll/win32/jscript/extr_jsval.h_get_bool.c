
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int BOOL ;


 int __JSVAL_BOOL (int ) ;

__attribute__((used)) static inline BOOL get_bool(jsval_t v)
{
    return __JSVAL_BOOL(v);
}
