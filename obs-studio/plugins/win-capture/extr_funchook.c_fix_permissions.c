
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int PAGE_EXECUTE_READWRITE ;
 int VirtualProtect (void*,size_t,int ,int *) ;

__attribute__((used)) static inline void fix_permissions(void *addr, size_t size)
{
 DWORD protect_val;
 VirtualProtect(addr, size, PAGE_EXECUTE_READWRITE, &protect_val);
}
