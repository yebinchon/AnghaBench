
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int size; } ;
struct TYPE_9__ {TYPE_2__ sha256; } ;
struct TYPE_7__ {scalar_t__ u8; } ;
struct TYPE_10__ {TYPE_3__ state; TYPE_1__ buffer; } ;
typedef TYPE_4__ lzma_check_state ;


 int memcpy (scalar_t__,int const*,size_t) ;
 int process (TYPE_4__*) ;

extern void
lzma_sha256_update(const uint8_t *buf, size_t size, lzma_check_state *check)
{




 while (size > 0) {
  const size_t copy_start = check->state.sha256.size & 0x3F;
  size_t copy_size = 64 - copy_start;
  if (copy_size > size)
   copy_size = size;

  memcpy(check->buffer.u8 + copy_start, buf, copy_size);

  buf += copy_size;
  size -= copy_size;
  check->state.sha256.size += copy_size;

  if ((check->state.sha256.size & 0x3F) == 0)
   process(check);
 }

 return;
}
