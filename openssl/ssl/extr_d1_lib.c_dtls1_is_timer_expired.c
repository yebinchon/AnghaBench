
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef int SSL ;


 int * dtls1_get_timeout (int *,struct timeval*) ;

int dtls1_is_timer_expired(SSL *s)
{
    struct timeval timeleft;


    if (dtls1_get_timeout(s, &timeleft) == ((void*)0)) {
        return 0;
    }


    if (timeleft.tv_sec > 0 || timeleft.tv_usec > 0) {
        return 0;
    }


    return 1;
}
