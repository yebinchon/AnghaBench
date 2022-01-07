
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct XRing {scalar_t__* ring; int head; int tail; } ;
typedef scalar_t__ Element ;


 int XRING_SIZE ;
 int XringFailure ;
 int XringSuccess ;

__attribute__((used)) static int
xring_add(struct XRing *xring, Element value)
{
    volatile Element *ring = xring->ring;
    Element num;

    if (value == 0) {
        return XringFailure;
    }

    if (xring->head >= xring->tail + XRING_SIZE) {

        return XringFailure;
    }
    num = xring->ring[xring->head & (XRING_SIZE-1)];
    if (num == 0) {
        ring[xring->head & (XRING_SIZE-1)] = value;
        xring->head++;
        return XringSuccess;







    }
    return XringFailure;
}
