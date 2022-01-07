
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpDashStyle ;
typedef int DWORD ;
 int ERR (char*) ;
 int PS_DASH ;
 int PS_DASHDOT ;
 int PS_DASHDOTDOT ;
 int PS_DOT ;
 int PS_SOLID ;
 int PS_USERSTYLE ;

__attribute__((used)) static DWORD gdip_to_gdi_dash(GpDashStyle dash)
{
    switch(dash){
        case 128:
            return PS_SOLID;
        case 132:
            return PS_DASH;
        case 129:
            return PS_DOT;
        case 131:
            return PS_DASHDOT;
        case 130:
            return PS_DASHDOTDOT;
        case 133:
            return PS_USERSTYLE;
        default:
            ERR("Not a member of GpDashStyle enumeration\n");
            return 0;
    }
}
