
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int jsdisp_t ;


 int jsval_disp (int ) ;
 int to_disp (int *) ;

__attribute__((used)) static inline jsval_t jsval_obj(jsdisp_t *obj)
{
    return jsval_disp(to_disp(obj));
}
