
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx9_base_effect {int dummy; } ;
typedef int ULONG64 ;


 int get_version_counter_ptr (struct d3dx9_base_effect*) ;
 int next_update_version (int ) ;

__attribute__((used)) static ULONG64 next_effect_update_version(struct d3dx9_base_effect *base)
{
    return next_update_version(get_version_counter_ptr(base));
}
