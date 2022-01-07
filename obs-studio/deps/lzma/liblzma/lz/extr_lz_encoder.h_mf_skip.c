
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int read_ahead; int (* skip ) (TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ lzma_mf ;


 int stub1 (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static inline void
mf_skip(lzma_mf *mf, uint32_t amount)
{
 if (amount != 0) {
  mf->skip(mf, amount);
  mf->read_ahead += amount;
 }
}
