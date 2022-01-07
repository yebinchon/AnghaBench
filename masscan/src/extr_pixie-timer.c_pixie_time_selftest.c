
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint64_t ;


 int fprintf (int ,char*,...) ;
 double pixie_gettime () ;
 int pixie_usleep (double const) ;
 int stderr ;

int pixie_time_selftest(void)
{
    static const uint64_t duration = 456789;
    uint64_t start, stop, elapsed;


    start = pixie_gettime();
    pixie_usleep(duration);
    stop = pixie_gettime();
    elapsed = stop - start;

    if (elapsed < 0.9 * duration) {
        fprintf(stderr, "timing error, long delay\n");
        return 1;
    }
    if (1.2 * duration < elapsed) {
        fprintf(stderr, "timing error, long delay %5.0f%%\n", elapsed*100.0/duration);
        return 1;
    }

    return 0;
}
