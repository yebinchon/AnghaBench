
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (void*) ;
 float cubic_ease_in_out (float) ;

__attribute__((used)) static float mix_a(void *data, float t)
{
 UNUSED_PARAMETER(data);
 return 1.0f - cubic_ease_in_out(t);
}
