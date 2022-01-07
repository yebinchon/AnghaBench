
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 unsigned int WINED3D_RESOURCE_ACCESS_CPU ;
 unsigned int WINED3D_RESOURCE_ACCESS_GPU ;

__attribute__((used)) static inline BOOL wined3d_resource_access_is_managed(unsigned int access)
{
    return !(~access & (WINED3D_RESOURCE_ACCESS_GPU | WINED3D_RESOURCE_ACCESS_CPU));
}
