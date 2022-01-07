
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct XRing {int dummy; } ;
struct Test {int producer_done; int producer_started; struct XRing* xring; } ;


 scalar_t__ XringFailure ;
 int pixie_locked_add_u32 (int *,int) ;
 scalar_t__ xring_add (struct XRing*,unsigned int) ;

__attribute__((used)) static void
test_producer_thread(void *v)
{
    struct Test *test = (struct Test *)v;
    unsigned i = 1000;
    struct XRing *xring = test->xring;

    pixie_locked_add_u32(&test->producer_started, 1);
    while (i) {
        while (xring_add(xring, i) == XringFailure)
            ;
        i--;
    }
    pixie_locked_add_u32(&test->producer_done, 1);
}
