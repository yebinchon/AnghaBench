
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DPOOL ;






 unsigned int D3DUSAGE_DYNAMIC ;
 unsigned int WINED3D_RESOURCE_ACCESS_CPU ;
 unsigned int WINED3D_RESOURCE_ACCESS_GPU ;
 unsigned int WINED3D_RESOURCE_ACCESS_MAP_R ;
 unsigned int WINED3D_RESOURCE_ACCESS_MAP_W ;

__attribute__((used)) static inline unsigned int wined3daccess_from_d3dpool(D3DPOOL pool, unsigned int usage)
{
    switch (pool)
    {
        case 131:
            if (usage & D3DUSAGE_DYNAMIC)
                return WINED3D_RESOURCE_ACCESS_GPU | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
            return WINED3D_RESOURCE_ACCESS_GPU;
        case 130:
            return WINED3D_RESOURCE_ACCESS_GPU | WINED3D_RESOURCE_ACCESS_CPU
                    | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
        case 128:
        case 129:
            return WINED3D_RESOURCE_ACCESS_CPU | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
        default:
            return 0;
    }
}
