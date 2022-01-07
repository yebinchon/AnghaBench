
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeout_t ;
struct timeouts {int expired; } ;


 int list_empty (int *) ;
 int timeouts_int (struct timeouts*) ;

timeout_t timeouts_timeout(struct timeouts *T)
{
    if (!list_empty(&T->expired))
        return 0;

    return timeouts_int(T);
}
