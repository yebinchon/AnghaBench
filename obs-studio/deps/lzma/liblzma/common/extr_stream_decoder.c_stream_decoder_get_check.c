
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int check; } ;
struct TYPE_5__ {TYPE_1__ stream_flags; } ;
typedef TYPE_2__ lzma_coder ;
typedef int lzma_check ;



__attribute__((used)) static lzma_check
stream_decoder_get_check(const lzma_coder *coder)
{
 return coder->stream_flags.check;
}
