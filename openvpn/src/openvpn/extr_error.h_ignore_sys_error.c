
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const EAGAIN ;
 int const ENOBUFS ;
 int const WSAEINVAL ;
 int const WSAEWOULDBLOCK ;

__attribute__((used)) static inline bool
ignore_sys_error(const int err)
{







    if (err == EAGAIN)
    {
        return 1;
    }
    return 0;
}
