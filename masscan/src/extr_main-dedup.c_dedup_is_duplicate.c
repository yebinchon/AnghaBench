
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DedupTable {struct DedupEntry** entries; } ;
struct DedupEntry {unsigned int ip_them; unsigned int port_them; unsigned int ip_me; unsigned int port_me; } ;
typedef unsigned int ip_me ;


 int DEDUP_ENTRIES ;
 int memmove (struct DedupEntry*,struct DedupEntry*,int) ;

unsigned
dedup_is_duplicate(struct DedupTable *dedup,
                   unsigned ip_them, unsigned port_them,
                   unsigned ip_me, unsigned port_me)
{
    unsigned hash;
    struct DedupEntry *bucket;
    unsigned i;



    hash = (ip_them + port_them) ^ ((ip_me) + (ip_them>>16)) ^ (ip_them>>24) ^ port_me;
    hash &= DEDUP_ENTRIES-1;


    bucket = dedup->entries[hash];

    for (i = 0; i < 4; i++) {
        if (bucket[i].ip_them == ip_them && bucket[i].port_them == port_them
            && bucket[i].ip_me == ip_me && bucket[i].port_me == port_me) {

            if (i > 0) {
                bucket[i].ip_them ^= bucket[0].ip_them;
                bucket[i].port_them ^= bucket[0].port_them;
                bucket[i].ip_me ^= bucket[0].ip_me;
                bucket[i].port_me ^= bucket[0].port_me;

                bucket[0].ip_them ^= bucket[i].ip_them;
                bucket[0].port_them ^= bucket[i].port_them;
                bucket[0].ip_me ^= bucket[i].ip_me;
                bucket[0].port_me ^= bucket[i].port_me;

                bucket[i].ip_them ^= bucket[0].ip_them;
                bucket[i].port_them ^= bucket[0].port_them;
                bucket[i].ip_me ^= bucket[0].ip_me;
                bucket[i].port_me ^= bucket[0].port_me;
            }
            return 1;
        }
    }



    memmove(bucket, bucket+1, 3*sizeof(*bucket));
    bucket[0].ip_them = ip_them;
    bucket[0].port_them = port_them;
    bucket[0].ip_me = ip_me;
    bucket[0].port_me = port_me;

    return 0;
}
