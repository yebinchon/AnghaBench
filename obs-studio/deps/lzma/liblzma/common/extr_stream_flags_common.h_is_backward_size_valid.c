
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int backward_size; } ;
typedef TYPE_1__ lzma_stream_flags ;


 int LZMA_BACKWARD_SIZE_MAX ;
 int LZMA_BACKWARD_SIZE_MIN ;

__attribute__((used)) static inline bool
is_backward_size_valid(const lzma_stream_flags *options)
{
 return options->backward_size >= LZMA_BACKWARD_SIZE_MIN
   && options->backward_size <= LZMA_BACKWARD_SIZE_MAX
   && (options->backward_size & 3) == 0;
}
