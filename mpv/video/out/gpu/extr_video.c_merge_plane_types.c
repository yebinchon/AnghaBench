
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum plane_type { ____Placeholder_plane_type } plane_type ;


 int PLANE_ALPHA ;
 int PLANE_LUMA ;
 int PLANE_NONE ;
 int PLANE_RGB ;
 int PLANE_XYZ ;

__attribute__((used)) static enum plane_type merge_plane_types(enum plane_type a, enum plane_type b)
{
    if (a == PLANE_NONE)
        return b;
    if (b == PLANE_LUMA || b == PLANE_RGB || b == PLANE_XYZ)
        return b;
    if (b != PLANE_NONE && a == PLANE_ALPHA)
        return b;
    return a;
}
