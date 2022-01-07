
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int VBArrayInstance ;


 int JSCLASS_VBARRAY ;
 scalar_t__ is_vclass (int *,int ) ;
 int * vbarray_from_vdisp (int *) ;

__attribute__((used)) static inline VBArrayInstance *vbarray_this(vdisp_t *jsthis)
{
    return is_vclass(jsthis, JSCLASS_VBARRAY) ? vbarray_from_vdisp(jsthis) : ((void*)0);
}
