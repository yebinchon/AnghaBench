
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* count; int* abcd; } ;
typedef TYPE_1__ md5_state_t ;
typedef int md5_byte_t ;


 int md5_append (TYPE_1__*,int const*,int) ;

void
md5_finish(md5_state_t *pms, md5_byte_t digest[16])
{
    static const md5_byte_t pad[64] = {
 0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    };
    md5_byte_t data[8];
    int i;


    for (i = 0; i < 8; ++i)
 data[i] = (md5_byte_t)(pms->count[i >> 2] >> ((i & 3) << 3));

    md5_append(pms, pad, ((55 - (pms->count[0] >> 3)) & 63) + 1);

    md5_append(pms, data, 8);
    for (i = 0; i < 16; ++i)
 digest[i] = (md5_byte_t)(pms->abcd[i >> 2] >> ((i & 3) << 3));
}
