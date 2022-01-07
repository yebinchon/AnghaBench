
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int DWORD ;


 unsigned int WINED3DUSAGE_MASK ;

__attribute__((used)) static inline DWORD wined3dusage_from_d3dusage(unsigned int usage)
{
    return usage & WINED3DUSAGE_MASK;
}
