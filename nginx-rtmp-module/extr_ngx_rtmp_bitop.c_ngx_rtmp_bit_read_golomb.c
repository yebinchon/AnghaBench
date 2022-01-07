
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_4__ {int err; } ;
typedef TYPE_1__ ngx_rtmp_bit_reader_t ;


 scalar_t__ ngx_rtmp_bit_read (TYPE_1__*,scalar_t__) ;

uint64_t
ngx_rtmp_bit_read_golomb(ngx_rtmp_bit_reader_t *br)
{
    ngx_uint_t n;

    for (n = 0; ngx_rtmp_bit_read(br, 1) == 0 && !br->err; n++);

    return ((uint64_t) 1 << n) + ngx_rtmp_bit_read(br, n) - 1;
}
