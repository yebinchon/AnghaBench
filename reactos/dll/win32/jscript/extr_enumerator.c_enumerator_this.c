
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int EnumeratorInstance ;


 int JSCLASS_ENUMERATOR ;
 int * enumerator_from_vdisp (int *) ;
 scalar_t__ is_vclass (int *,int ) ;

__attribute__((used)) static inline EnumeratorInstance *enumerator_this(vdisp_t *jsthis)
{
    return is_vclass(jsthis, JSCLASS_ENUMERATOR) ? enumerator_from_vdisp(jsthis) : ((void*)0);
}
