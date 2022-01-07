
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int check; } ;
typedef TYPE_1__ lzma_stream_flags ;


 unsigned int LZMA_CHECK_ID_MAX ;

__attribute__((used)) static bool
stream_flags_encode(const lzma_stream_flags *options, uint8_t *out)
{
 if ((unsigned int)(options->check) > LZMA_CHECK_ID_MAX)
  return 1;

 out[0] = 0x00;
 out[1] = options->check;

 return 0;
}
