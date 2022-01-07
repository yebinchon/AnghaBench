
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {double pitch; scalar_t__ rubber; } ;


 int rubberband_set_pitch_scale (scalar_t__,double) ;

__attribute__((used)) static bool update_pitch(struct priv *p, double new_pitch)
{
    if (new_pitch < 0.01 || new_pitch > 100.0)
        return 0;

    p->pitch = new_pitch;
    if (p->rubber)
        rubberband_set_pitch_scale(p->rubber, p->pitch);
    return 1;
}
