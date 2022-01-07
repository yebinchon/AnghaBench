
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct XRing {scalar_t__ tail; scalar_t__ head; } ;
struct Test {int consumer_done; int total_count; int not_active; struct XRing* xring; } ;
typedef scalar_t__ Element ;


 scalar_t__ xring_remove (struct XRing*) ;

__attribute__((used)) static void
test_consumer_thread(void *v)
{
    struct Test *test = (struct Test *)v;
    struct XRing *xring = test->xring;


    while (!test->not_active) {
        Element e;

        e = xring_remove(xring);
        if (e == 0)
            ;
        else {
            test->total_count += e;
        }
    }

    while (xring->tail < xring->head) {
        Element e;

        e = xring_remove(xring);
        if (e == 0)
            ;
        else {
            test->total_count += e;
        }
    }

    test->consumer_done = 1;
}
