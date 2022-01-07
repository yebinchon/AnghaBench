
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct BlackRock {int dummy; } ;


 int blackrock_init (struct BlackRock*,int,int ,int) ;
 int blackrock_shuffle (struct BlackRock*,int) ;
 int blackrock_unshuffle (struct BlackRock*,int) ;
 int blackrock_verify (struct BlackRock*,int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int time (int ) ;

int
blackrock_selftest(void)
{
    uint64_t i;
    uint64_t range;
    {
        struct BlackRock br;

        blackrock_init(&br, 1000, 0, 4);

        for (i=0; i<10; i++) {
            uint64_t result, result2;
            result = blackrock_shuffle(&br, i);
            result2 = blackrock_unshuffle(&br, result);
            if (i != result2)
                return 1;
        }

    }


    range = 3015 * 3;

    for (i=0; i<5; i++) {
        struct BlackRock br;
        int is_success;

        range += 10 + i;
        range *= 2;

        blackrock_init(&br, range, time(0), 4);

        is_success = blackrock_verify(&br, range);
        if (!is_success) {
            fprintf(stderr, "BLACKROCK: randomization failed\n");
            return 1;
        }
    }

    return 0;
}
