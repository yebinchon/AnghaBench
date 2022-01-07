
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
struct ResetFilter {size_t seed; size_t bucket_mask; unsigned char* buckets; int counter; } ;
typedef int input ;


 size_t siphash24 (unsigned int*,int,size_t*) ;

int
rstfilter_is_filter(struct ResetFilter *rf,
                    unsigned src_ip, unsigned src_port,
                    unsigned dst_ip, unsigned dst_port)
{
    uint64_t hash;
    unsigned input[4];
    uint64_t key[2];
    size_t index;
    unsigned char *p;
    int result = 0;




    input[0] = src_ip;
    input[1] = src_port;
    input[2] = dst_ip;
    input[3] = dst_port;
    key[0] = rf->seed;
    key[1] = rf->seed;




    hash = siphash24(input, sizeof(input), key);
    index = hash & rf->bucket_mask;




    p = &rf->buckets[index/2];
    if (index & 1) {
        if ((*p & 0x0F) == 0x0F)
            result = 1;
        else
            *p = (*p) + 0x01;
    } else {
        if ((*p & 0xF0) == 0xF0)
            result = 1;
        else
            *p = (*p) + 0x10;
    }




    input[0] = (unsigned)hash;
    input[1] = rf->counter++;
    hash = siphash24(input, sizeof(input), key);
    index = hash & rf->bucket_mask;
    p = &rf->buckets[index/2];
    if (index & 1) {
        if ((*p & 0x0F))
            *p = (*p) - 0x01;
    } else {
        if ((*p & 0xF0))
            *p = (*p) - 0x10;
    }

    return result;
}
