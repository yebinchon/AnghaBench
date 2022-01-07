
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsdisp_t ;
typedef int BOOL ;


 int JSCLASS_FUNCTION ;
 int is_class (int *,int ) ;

__attribute__((used)) static inline BOOL is_callable(jsdisp_t *obj)
{
    return is_class(obj, JSCLASS_FUNCTION);
}
