
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ md5_word_t ;
struct TYPE_4__ {int* count; int const* buf; } ;
typedef TYPE_1__ md5_state_t ;
typedef int md5_byte_t ;


 int md5_process (TYPE_1__*,int const*) ;
 int memcpy (int const*,int const*,int) ;

void
md5_append(md5_state_t *pms, const md5_byte_t *data, int nbytes)
{
    const md5_byte_t *p = data;
    int left = nbytes;
    int offset = (pms->count[0] >> 3) & 63;
    md5_word_t nbits = (md5_word_t)(nbytes << 3);

    if (nbytes <= 0)
 return;


    pms->count[1] += nbytes >> 29;
    pms->count[0] += nbits;
    if (pms->count[0] < nbits)
 pms->count[1]++;


    if (offset) {
 int copy = (offset + nbytes > 64 ? 64 - offset : nbytes);

 memcpy(pms->buf + offset, p, copy);
 if (offset + copy < 64)
     return;
 p += copy;
 left -= copy;
 md5_process(pms, pms->buf);
    }


    for (; left >= 64; p += 64, left -= 64)
 md5_process(pms, p);


    if (left)
 memcpy(pms->buf, p, left);
}
