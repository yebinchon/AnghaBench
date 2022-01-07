
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ read_ahead; size_t read_pos; scalar_t__ buffer; } ;
typedef TYPE_1__ lzma_mf ;


 int assert (int) ;
 int memcpy (int *,scalar_t__,size_t const) ;
 size_t my_min (size_t const,size_t) ;

__attribute__((used)) static inline void
mf_read(lzma_mf *mf, uint8_t *out, size_t *out_pos, size_t out_size,
  size_t *left)
{
 const size_t out_avail = out_size - *out_pos;
 const size_t copy_size = my_min(out_avail, *left);

 assert(mf->read_ahead == 0);
 assert(mf->read_pos >= *left);

 memcpy(out + *out_pos, mf->buffer + mf->read_pos - *left,
   copy_size);

 *out_pos += copy_size;
 *left -= copy_size;
 return;
}
