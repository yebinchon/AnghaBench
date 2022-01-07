
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fade_to_color_info {float switch_point; } ;


 float lerp (float,float,int ) ;
 int smoothstep (float,float,float) ;

__attribute__((used)) static float mix_a(void *data, float t)
{
 struct fade_to_color_info *fade_to_color = data;
 float sp = fade_to_color->switch_point;

 return lerp(1.0f - t, 0.0f, smoothstep(0.0f, sp, t));
}
