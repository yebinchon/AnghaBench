
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enum_hotkey_pairs (int ,int *) ;
 int pair_pointer_fixup_func ;

__attribute__((used)) static inline void fixup_pair_pointers(void)
{
 enum_hotkey_pairs(pair_pointer_fixup_func, ((void*)0));
}
