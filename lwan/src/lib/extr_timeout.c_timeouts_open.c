
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeout_error_t ;
struct timeouts {int dummy; } ;


 int errno ;
 struct timeouts* lwan_aligned_alloc (int,int) ;
 struct timeouts* timeouts_init (struct timeouts*) ;

struct timeouts *timeouts_open(timeout_error_t *error)
{
    struct timeouts *T;

    if ((T = lwan_aligned_alloc(sizeof *T, 64)))
        return timeouts_init(T);

    *error = errno;

    return ((void*)0);
}
