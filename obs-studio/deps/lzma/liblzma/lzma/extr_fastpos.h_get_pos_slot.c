
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t fastpos_limit (int ,int) ;
 size_t fastpos_result (size_t,int ,int) ;
 size_t* lzma_fastpos ;

__attribute__((used)) static inline uint32_t
get_pos_slot(uint32_t pos)
{


 if (pos < fastpos_limit(0, 0))
  return lzma_fastpos[pos];

 if (pos < fastpos_limit(0, 1))
  return fastpos_result(pos, 0, 1);

 return fastpos_result(pos, 0, 2);
}
