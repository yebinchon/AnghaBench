
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (void*) ;

__attribute__((used)) static float mix_a(void *data, float t)
{
 UNUSED_PARAMETER(data);
 return 1.0f - t;
}
