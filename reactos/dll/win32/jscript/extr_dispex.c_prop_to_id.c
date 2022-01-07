
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int props; } ;
typedef TYPE_1__ jsdisp_t ;
typedef int dispex_prop_t ;
typedef int * DISPID ;



__attribute__((used)) static inline DISPID prop_to_id(jsdisp_t *This, dispex_prop_t *prop)
{
    return prop - This->props;
}
