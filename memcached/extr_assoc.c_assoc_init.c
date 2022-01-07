
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hash_power_level; int hash_bytes; } ;


 int EXIT_FAILURE ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int calloc (int,int) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int hashpower ;
 int hashsize (int) ;
 int primary_hashtable ;
 TYPE_1__ stats_state ;
 int stderr ;

void assoc_init(const int hashtable_init) {
    if (hashtable_init) {
        hashpower = hashtable_init;
    }
    primary_hashtable = calloc(hashsize(hashpower), sizeof(void *));
    if (! primary_hashtable) {
        fprintf(stderr, "Failed to init hashtable.\n");
        exit(EXIT_FAILURE);
    }
    STATS_LOCK();
    stats_state.hash_power_level = hashpower;
    stats_state.hash_bytes = hashsize(hashpower) * sizeof(void *);
    STATS_UNLOCK();
}
