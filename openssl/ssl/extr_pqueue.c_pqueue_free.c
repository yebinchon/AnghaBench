
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pqueue ;


 int OPENSSL_free (int *) ;

void pqueue_free(pqueue *pq)
{
    OPENSSL_free(pq);
}
