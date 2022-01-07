
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int ERR (char*) ;
 int PT_BEZIERTO ;
 int PT_CLOSEFIGURE ;
 int PT_LINETO ;
 int PT_MOVETO ;

 int PathPointTypeCloseSubpath ;

 int PathPointTypePathTypeMask ;


__attribute__((used)) static BYTE convert_path_point_type(BYTE type)
{
    BYTE ret;

    switch(type & PathPointTypePathTypeMask){
        case 130:
            ret = PT_BEZIERTO;
            break;
        case 129:
            ret = PT_LINETO;
            break;
        case 128:
            ret = PT_MOVETO;
            break;
        default:
            ERR("Bad point type\n");
            return 0;
    }

    if(type & PathPointTypeCloseSubpath)
        ret |= PT_CLOSEFIGURE;

    return ret;
}
