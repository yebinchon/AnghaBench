
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enum_bindings (int ,int *) ;
 int pointer_fixup_func ;

__attribute__((used)) static inline void fixup_pointers(void)
{
 enum_bindings(pointer_fixup_func, ((void*)0));
}
