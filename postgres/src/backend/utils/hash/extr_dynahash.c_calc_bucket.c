
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int high_mask; int max_bucket; int low_mask; } ;
typedef TYPE_1__ HASHHDR ;



__attribute__((used)) static inline uint32
calc_bucket(HASHHDR *hctl, uint32 hash_val)
{
 uint32 bucket;

 bucket = hash_val & hctl->high_mask;
 if (bucket > hctl->max_bucket)
  bucket = bucket & hctl->low_mask;

 return bucket;
}
