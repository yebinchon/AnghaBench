
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int*,int) ;
 scalar_t__ nn_fast (int) ;
 int nn_random_state ;

void nn_random_generate (void *buf, size_t len)
{
    uint8_t *pos;

    pos = (uint8_t*) buf;

    while (1) {


        nn_random_state = nn_random_state * 1103515245 + 12345;


        memcpy (pos, &nn_random_state, len > 8 ? 8 : len);
        if (nn_fast (len <= 8))
            return;
        len -= 8;
        pos += 8;
    }
}
