
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct XRing {int tail; int head; scalar_t__* ring; } ;
typedef scalar_t__ Element ;


 int XRING_SIZE ;

__attribute__((used)) static Element
xring_remove(struct XRing *xring)
{
    volatile Element *ring = xring->ring;
    Element num;

    if (xring->tail >= xring->head)
        return 0;


    num = ring[xring->tail & (XRING_SIZE-1)];
    if (num) {
        ring[xring->tail & (XRING_SIZE-1)] = 0;
        xring->tail++;
        return num;
    } else {
        return 0;
    }
}
