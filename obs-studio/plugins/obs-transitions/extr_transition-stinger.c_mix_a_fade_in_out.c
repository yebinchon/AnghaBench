
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stinger_info {int transition_a_mul; } ;


 float calc_fade (float,int ) ;

__attribute__((used)) static float mix_a_fade_in_out(void *data, float t)
{
 struct stinger_info *s = data;
 return 1.0f - calc_fade(t, s->transition_a_mul);
}
