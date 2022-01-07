
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POLLINFO ;


 int error (char*) ;

__attribute__((used)) static int statsd_snd_callback(POLLINFO *pi, short int *events) {
    (void)pi;
    (void)events;

    error("STATSD: snd_callback() called, but we never requested to send data to statsd clients.");
    return -1;
}
