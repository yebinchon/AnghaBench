
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t** prices; } ;
typedef TYPE_1__ lzma_length_encoder ;


 size_t const MATCH_LEN_MIN ;

__attribute__((used)) static inline uint32_t
get_len_price(const lzma_length_encoder *const lencoder,
  const uint32_t len, const uint32_t pos_state)
{


 return lencoder->prices[pos_state][len - MATCH_LEN_MIN];
}
