
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {double speed; scalar_t__ rubber; } ;


 int rubberband_set_time_ratio (scalar_t__,double) ;

__attribute__((used)) static void update_speed(struct priv *p, double new_speed)
{
    p->speed = new_speed;
    if (p->rubber)
        rubberband_set_time_ratio(p->rubber, 1.0 / p->speed);
}
