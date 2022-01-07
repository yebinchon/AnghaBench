
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {float speed; double scale; int frames_stride_scaled; int frames_stride; int frames_stride_error; TYPE_1__* opts; } ;
struct TYPE_2__ {int speed_opt; double scale_nominal; } ;


 int MPMIN (int ,int) ;
 int SCALE_PITCH ;

__attribute__((used)) static void update_speed(struct priv *s, float speed)
{
    s->speed = speed;

    double factor = (s->opts->speed_opt & SCALE_PITCH) ? 1.0 / s->speed : s->speed;
    s->scale = factor * s->opts->scale_nominal;

    s->frames_stride_scaled = s->scale * s->frames_stride;
    s->frames_stride_error = MPMIN(s->frames_stride_error, s->frames_stride_scaled);
}
