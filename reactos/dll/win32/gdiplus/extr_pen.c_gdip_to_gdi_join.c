
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpLineJoin ;
typedef int DWORD ;


 int ERR (char*) ;




 int PS_JOIN_BEVEL ;
 int PS_JOIN_MITER ;
 int PS_JOIN_ROUND ;

__attribute__((used)) static DWORD gdip_to_gdi_join(GpLineJoin join)
{
    switch(join){
        case 128:
            return PS_JOIN_ROUND;
        case 131:
            return PS_JOIN_BEVEL;
        case 130:
        case 129:
            return PS_JOIN_MITER;
        default:
            ERR("Not a member of GpLineJoin enumeration\n");
            return 0;
    }
}
