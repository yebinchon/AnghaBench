
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SWEEP_ID_MASK ;
 unsigned int SWEEP_ID_SHIFT ;

__attribute__((used)) static inline unsigned int extract_sweep_id(unsigned int pattern)

{
 unsigned int ret;

 ret = (pattern >> SWEEP_ID_SHIFT) & SWEEP_ID_MASK;

 return ret;
}
