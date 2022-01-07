
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {double pts; } ;



__attribute__((used)) static void video_set_pts(void *data, double pts)
{
    ((struct mp_image *)data)->pts = pts;
}
