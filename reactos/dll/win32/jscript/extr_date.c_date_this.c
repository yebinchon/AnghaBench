
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int jsdisp; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
typedef int DateInstance ;


 int JSCLASS_DATE ;
 int * date_from_jsdisp (int ) ;
 scalar_t__ is_vclass (TYPE_2__*,int ) ;

__attribute__((used)) static inline DateInstance *date_this(vdisp_t *jsthis)
{
    return is_vclass(jsthis, JSCLASS_DATE) ? date_from_jsdisp(jsthis->u.jsdisp) : ((void*)0);
}
