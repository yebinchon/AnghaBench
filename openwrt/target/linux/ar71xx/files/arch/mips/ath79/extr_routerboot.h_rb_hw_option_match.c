
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rb_info {int hw_options; } ;



__attribute__((used)) static inline bool
rb_hw_option_match(const struct rb_info *info, u32 mask, u32 val)
{
 return (info->hw_options & (val | mask)) == val;
}
