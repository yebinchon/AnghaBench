
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int WORD_OFFSET_MASK ;
 unsigned int WORD_OFFSET_SHIFT ;

__attribute__((used)) static inline unsigned int extract_word_offset(unsigned int pattern)
{
 unsigned int ret;

 ret = (pattern >> WORD_OFFSET_SHIFT) & WORD_OFFSET_MASK;

 return ret;
}
