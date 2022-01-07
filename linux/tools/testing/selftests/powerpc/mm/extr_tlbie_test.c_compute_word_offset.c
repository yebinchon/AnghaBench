
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int WORD_SIZE ;

__attribute__((used)) static inline unsigned int compute_word_offset(char *start, unsigned int *addr)
{
 unsigned int delta_bytes, ret;
 delta_bytes = (unsigned long)addr - (unsigned long)start;

 ret = delta_bytes/WORD_SIZE;

 return ret;
}
