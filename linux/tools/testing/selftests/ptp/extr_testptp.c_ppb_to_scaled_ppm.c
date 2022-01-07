
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long ppb_to_scaled_ppm(int ppb)
{
 return (long) (ppb * 65.536);
}
