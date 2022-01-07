
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev {struct netdev* next; scalar_t__ updated; } ;


 scalar_t__ likely (int) ;
 scalar_t__ netdev_added ;
 scalar_t__ netdev_found ;
 int netdev_free (struct netdev*) ;
 struct netdev* netdev_last_used ;
 struct netdev* netdev_root ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void netdev_cleanup() {
    if(likely(netdev_found == netdev_added)) return;

    netdev_added = 0;
    struct netdev *d = netdev_root, *last = ((void*)0);
    while(d) {
        if(unlikely(!d->updated)) {


            if(netdev_last_used == d)
                netdev_last_used = last;

            struct netdev *t = d;

            if(d == netdev_root || !last)
                netdev_root = d = d->next;

            else
                last->next = d = d->next;

            t->next = ((void*)0);
            netdev_free(t);
        }
        else {
            netdev_added++;
            last = d;
            d->updated = 0;
            d = d->next;
        }
    }
}
