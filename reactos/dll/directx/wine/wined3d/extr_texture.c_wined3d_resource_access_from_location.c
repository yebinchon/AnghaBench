
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int FIXME (char*,int) ;
 int WINED3D_RESOURCE_ACCESS_CPU ;
 int WINED3D_RESOURCE_ACCESS_GPU ;

__attribute__((used)) static DWORD wined3d_resource_access_from_location(DWORD location)
{
    switch (location)
    {
        case 135:
            return 0;

        case 131:
        case 128:
            return WINED3D_RESOURCE_ACCESS_CPU;

        case 136:
        case 134:
        case 130:
        case 129:
        case 133:
        case 132:
            return WINED3D_RESOURCE_ACCESS_GPU;

        default:
            FIXME("Unhandled location %#x.\n", location);
            return 0;
    }
}
