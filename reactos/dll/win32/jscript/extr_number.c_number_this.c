
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int NumberInstance ;


 int JSCLASS_NUMBER ;
 scalar_t__ is_vclass (int *,int ) ;
 int * number_from_vdisp (int *) ;

__attribute__((used)) static inline NumberInstance *number_this(vdisp_t *jsthis)
{
    return is_vclass(jsthis, JSCLASS_NUMBER) ? number_from_vdisp(jsthis) : ((void*)0);
}
