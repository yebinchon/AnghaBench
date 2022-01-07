
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ read_ahead; scalar_t__ read_pos; scalar_t__ write_pos; } ;
typedef TYPE_1__ lzma_mf ;



__attribute__((used)) static inline uint32_t
mf_unencoded(const lzma_mf *mf)
{
 return mf->write_pos - mf->read_pos + mf->read_ahead;
}
