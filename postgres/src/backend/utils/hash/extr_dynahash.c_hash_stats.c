
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* hctl; } ;
struct TYPE_5__ {int nsegs; int max_bucket; scalar_t__ keysize; int collisions; int accesses; } ;
typedef TYPE_2__ HTAB ;


 int fprintf (int ,char*,char const*,...) ;
 int hash_accesses ;
 int hash_collisions ;
 int hash_expansions ;
 int hash_get_num_entries (TYPE_2__*) ;
 int stderr ;

void
hash_stats(const char *where, HTAB *hashp)
{
}
