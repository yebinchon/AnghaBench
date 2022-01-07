
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* bytes ) (unsigned char*,int) ;} ;


 int TEST_size_t_le (int,int ) ;
 unsigned char* fake_rand_bytes ;
 int fake_rand_bytes_offset ;
 int fake_rand_size ;
 TYPE_1__* saved_rand ;
 int stub1 (unsigned char*,int) ;

__attribute__((used)) static int get_faked_bytes(unsigned char *buf, int num)
{
    int i;

    if (fake_rand_bytes == ((void*)0))
        return saved_rand->bytes(buf, num);

    if (!TEST_size_t_le(fake_rand_bytes_offset + num, fake_rand_size))
        return 0;

    for (i = 0; i != num; ++i)
        buf[i] = fake_rand_bytes[fake_rand_bytes_offset + i];
    fake_rand_bytes_offset += num;
    return 1;
}
