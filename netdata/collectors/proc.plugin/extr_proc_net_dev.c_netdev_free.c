
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev {scalar_t__ filename_speed; scalar_t__ name; } ;


 int freez (void*) ;
 int netdev_added ;
 int netdev_charts_release (struct netdev*) ;
 int netdev_free_chart_strings (struct netdev*) ;

__attribute__((used)) static void netdev_free(struct netdev *d) {
    netdev_charts_release(d);
    netdev_free_chart_strings(d);

    freez((void *)d->name);
    freez((void *)d->filename_speed);
    freez((void *)d);
    netdev_added--;
}
