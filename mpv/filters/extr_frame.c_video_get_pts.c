
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {double pts; } ;



__attribute__((used)) static double video_get_pts(void *data)
{
    return ((struct mp_image *)data)->pts;
}
