
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int THREAD_ID_MASK ;
 unsigned int THREAD_ID_SHIFT ;

__attribute__((used)) static inline unsigned int extract_tid(unsigned int pattern)
{
 unsigned int ret;

 ret = (pattern >> THREAD_ID_SHIFT) & THREAD_ID_MASK;
 return ret;
}
