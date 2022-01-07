
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int __int64 ;
struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int EAGAIN ;
 int EINVAL ;
 int INFINITE ;
 int LLONG_MAX ;
 scalar_t__ SetWaitableTimer (int *,TYPE_1__*,int ,int *,int *,int ) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int *,int ) ;
 int errno ;
 int * waitTimer ;

int usleep_impl(__int64 usec) {
    if (waitTimer == ((void*)0)) {
        errno = EAGAIN;
        return -1;
    }
    if (usec < 0 || usec > LLONG_MAX / 10) {
        errno = EINVAL;
        return -1;
    }

    LARGE_INTEGER ft;
    ft.QuadPart = -10 * usec;
    if (SetWaitableTimer(waitTimer, &ft, 0, ((void*)0), ((void*)0), 0) == 0) {
        errno = EINVAL;
        return -1;
    }
    if (WaitForSingleObject(waitTimer, INFINITE) != WAIT_OBJECT_0) {
        errno = EAGAIN;
        return -1;
    }
    return 0;
}
