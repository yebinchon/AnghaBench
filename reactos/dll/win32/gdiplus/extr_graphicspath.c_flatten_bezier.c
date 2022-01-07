
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {double X; double Y; } ;
struct TYPE_7__ {TYPE_2__ pt; } ;
typedef TYPE_1__ path_list_node_t ;
typedef double REAL ;
typedef TYPE_2__ GpPointF ;
typedef void* BOOL ;


 void* FALSE ;
 int PathPointTypeLine ;
 void* TRUE ;
 TYPE_1__* add_path_list_node (TYPE_1__*,int,int,int ) ;
 double fabs (int) ;
 scalar_t__ powf (int,double) ;
 double sqrtf (scalar_t__) ;

__attribute__((used)) static BOOL flatten_bezier(path_list_node_t *start, REAL x2, REAL y2, REAL x3, REAL y3,
                           path_list_node_t *end, REAL flatness)
{

    GpPointF mp[5];
    GpPointF pt, pt_st;
    path_list_node_t *node;


    mp[0].X = (start->pt.X + x2) / 2.0;
    mp[0].Y = (start->pt.Y + y2) / 2.0;

    pt.X = (x2 + x3) / 2.0;
    pt.Y = (y2 + y3) / 2.0;
    mp[1].X = (mp[0].X + pt.X) / 2.0;
    mp[1].Y = (mp[0].Y + pt.Y) / 2.0;
    mp[4].X = (end->pt.X + x3) / 2.0;
    mp[4].Y = (end->pt.Y + y3) / 2.0;
    mp[3].X = (mp[4].X + pt.X) / 2.0;
    mp[3].Y = (mp[4].Y + pt.Y) / 2.0;

    mp[2].X = (mp[1].X + mp[3].X) / 2.0;
    mp[2].Y = (mp[1].Y + mp[3].Y) / 2.0;

    if ((x2 == mp[0].X && y2 == mp[0].Y && x3 == mp[1].X && y3 == mp[1].Y) ||
        (x2 == mp[3].X && y2 == mp[3].Y && x3 == mp[4].X && y3 == mp[4].Y))
        return TRUE;

    pt = end->pt;
    pt_st = start->pt;

    if(fabs(((pt.Y - pt_st.Y)*mp[2].X + (pt_st.X - pt.X)*mp[2].Y +
        (pt_st.Y*pt.X - pt_st.X*pt.Y))) <=
        (0.5 * flatness*sqrtf((powf(pt.Y - pt_st.Y, 2.0) + powf(pt_st.X - pt.X, 2.0))))){
        return TRUE;
    }
    else

        if(!(node = add_path_list_node(start, mp[2].X, mp[2].Y, PathPointTypeLine)))
            return FALSE;


    flatten_bezier(start, mp[0].X, mp[0].Y, mp[1].X, mp[1].Y, node, flatness);
    flatten_bezier(node, mp[3].X, mp[3].Y, mp[4].X, mp[4].Y, end, flatness);

    return TRUE;
}
