
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pqueue ;
typedef int pitem ;


 int * pqueue_peek (int *) ;

pitem *pqueue_iterator(pqueue *pq)
{
    return pqueue_peek(pq);
}
