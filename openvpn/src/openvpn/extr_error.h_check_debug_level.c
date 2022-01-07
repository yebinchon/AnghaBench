
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int M_DEBUG_LEVEL ;
 unsigned int x_debug_level ;

__attribute__((used)) static inline bool
check_debug_level(unsigned int level)
{
    return (level & M_DEBUG_LEVEL) <= x_debug_level;
}
