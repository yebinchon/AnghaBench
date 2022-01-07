
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int jsdisp; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
typedef int jsclass_t ;
typedef int BOOL ;


 scalar_t__ is_class (int ,int ) ;
 scalar_t__ is_jsdisp (TYPE_2__*) ;

__attribute__((used)) static inline BOOL is_vclass(vdisp_t *vdisp, jsclass_t class)
{
    return is_jsdisp(vdisp) && is_class(vdisp->u.jsdisp, class);
}
