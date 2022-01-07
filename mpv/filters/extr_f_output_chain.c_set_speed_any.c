
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_user_filter {int f; } ;
struct mp_filter_command {double speed; int type; } ;


 int MP_FILTER_COMMAND_SET_SPEED ;
 int MP_FILTER_COMMAND_SET_SPEED_RESAMPLE ;
 int assert (double) ;
 scalar_t__ mp_filter_command (int ,struct mp_filter_command*) ;

__attribute__((used)) static void set_speed_any(struct mp_user_filter **filters, int num_filters,
                          bool resample, double *speed)
{
    for (int n = num_filters - 1; n >= 0; n--) {
        assert(*speed);
        struct mp_filter_command cmd = {
            .type = resample ? MP_FILTER_COMMAND_SET_SPEED_RESAMPLE
                             : MP_FILTER_COMMAND_SET_SPEED,
            .speed = *speed,
        };
        if (mp_filter_command(filters[n]->f, &cmd))
            *speed = 1.0;
    }
}
