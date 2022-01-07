
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_debug_level (unsigned int) ;
 scalar_t__ dont_mute (unsigned int) ;

__attribute__((used)) static inline bool
msg_test(unsigned int flags)
{
    return check_debug_level(flags) && dont_mute(flags);
}
