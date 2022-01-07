
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ OBS_SIZE_MAX ;
 scalar_t__ OBS_SIZE_MIN ;

__attribute__((used)) static inline bool size_valid(uint32_t width, uint32_t height)
{
 return (width >= OBS_SIZE_MIN && height >= OBS_SIZE_MIN &&
  width <= OBS_SIZE_MAX && height <= OBS_SIZE_MAX);
}
