
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct BlackRock {int dummy; } ;


 int blackrock2_init (struct BlackRock*,int,int ,int) ;
 int blackrock2_shuffle (struct BlackRock*,int) ;
 int blackrock2_unshuffle (struct BlackRock*,int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int time (int ) ;
 int verify (struct BlackRock*,int) ;

int
blackrock2_selftest(void)
{
    uint64_t i;
    int is_success = 0;
    uint64_t range;
    {
        struct BlackRock br;
        uint64_t result, result2;
        blackrock2_init(&br, 1000, 0, 6);

        for (i=0; i<10; i++) {
            result = blackrock2_shuffle(&br, i);
            result2 = blackrock2_unshuffle(&br, result);
            if (i != result2)
                return 1;
        }

    }


    range = 3015 * 3;

    for (i=0; i<5; i++) {
        struct BlackRock br;

        range += 11 + i;
        range *= 1 + i;

        blackrock2_init(&br, range, time(0), 6);

        is_success = verify(&br, range);

        if (!is_success) {
            fprintf(stderr, "BLACKROCK: randomization failed\n");
            return 1;
        }
    }

    return 0;
}
