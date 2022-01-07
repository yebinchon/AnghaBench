
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int ITypeInfo_Release (scalar_t__) ;
 int ITypeLib_Release (scalar_t__) ;
 scalar_t__* typeinfo ;
 scalar_t__ typelib ;

void release_typelib(void)
{
    unsigned i;

    for (i = 0; i < ARRAY_SIZE(typeinfo); i++)
        if (typeinfo[i])
            ITypeInfo_Release(typeinfo[i]);

    if (typelib)
        ITypeLib_Release(typelib);
}
