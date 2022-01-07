
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stinger_info {int transition_b_mul; } ;


 float calc_fade (float,int ) ;

__attribute__((used)) static float mix_b_fade_in_out(void *data, float t)
{
 struct stinger_info *s = data;
 return 1.0f - calc_fade(1.0f - t, s->transition_b_mul);
}
