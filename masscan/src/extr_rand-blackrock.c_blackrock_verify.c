
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct BlackRock {scalar_t__ range; } ;


 unsigned char* CALLOC (int,size_t) ;
 scalar_t__ blackrock_shuffle (struct BlackRock*,scalar_t__) ;
 int free (unsigned char*) ;

__attribute__((used)) static unsigned
blackrock_verify(struct BlackRock *br, uint64_t max)
{
    unsigned char *list;
    uint64_t i;
    unsigned is_success = 1;
    uint64_t range = br->range;


    list = CALLOC(1, (size_t)((range<max)?range:max));



    for (i=0; i<range; i++) {
        uint64_t x = blackrock_shuffle(br, i);
        if (x < max)
            list[x]++;
    }



    for (i=0; i<max && i<range; i++) {
        if (list[i] != 1)
            is_success = 0;
    }

    free(list);

    return is_success;
}
