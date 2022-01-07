
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int BoolInstance ;


 int JSCLASS_BOOLEAN ;
 int * bool_from_vdisp (int *) ;
 scalar_t__ is_vclass (int *,int ) ;

__attribute__((used)) static inline BoolInstance *bool_this(vdisp_t *jsthis)
{
    return is_vclass(jsthis, JSCLASS_BOOLEAN) ? bool_from_vdisp(jsthis) : ((void*)0);
}
