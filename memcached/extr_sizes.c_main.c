
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct thread_stats {int dummy; } ;
struct stats {int dummy; } ;
struct slab_stats {int dummy; } ;
struct settings {int dummy; } ;
typedef int item_hdr ;
typedef int item ;
typedef int conn ;
typedef int LIBEVENT_THREAD ;


 int display (char*,int) ;
 int printf (char*) ;

int main(int argc, char **argv) {

    display("Slab Stats", sizeof(struct slab_stats));
    display("Thread stats",
            sizeof(struct thread_stats)
            - (200 * sizeof(struct slab_stats)));
    display("Global stats", sizeof(struct stats));
    display("Settings", sizeof(struct settings));
    display("Item (no cas)", sizeof(item));
    display("Item (cas)", sizeof(item) + sizeof(uint64_t));



    display("Libevent thread",
            sizeof(LIBEVENT_THREAD) - sizeof(struct thread_stats));
    display("Connection", sizeof(conn));

    printf("----------------------------------------\n");

    display("libevent thread cumulative", sizeof(LIBEVENT_THREAD));
    display("Thread stats cumulative\t", sizeof(struct thread_stats));

    return 0;
}
