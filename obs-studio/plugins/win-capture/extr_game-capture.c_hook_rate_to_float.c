
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hook_rate { ____Placeholder_hook_rate } hook_rate ;







__attribute__((used)) static inline float hook_rate_to_float(enum hook_rate rate)
{
 switch (rate) {
 case 128:
  return 2.0f;
 case 131:
  return 0.5f;
 case 130:
  return 0.1f;
 case 129:

 default:
  return 1.0f;
 }
}
