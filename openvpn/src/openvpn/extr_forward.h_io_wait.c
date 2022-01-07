
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int event_set_status; scalar_t__ fast_io; } ;
struct context {TYPE_1__ c2; } ;


 unsigned int const IOW_MBUF ;
 unsigned int const IOW_TO_LINK ;
 unsigned int const IOW_TO_TUN ;
 unsigned int SOCKET_WRITE ;
 unsigned int TUN_WRITE ;

__attribute__((used)) static inline void
io_wait(struct context *c, const unsigned int flags)
{
    void io_wait_dowork(struct context *c, const unsigned int flags);

    if (c->c2.fast_io && (flags & (IOW_TO_TUN|IOW_TO_LINK|IOW_MBUF)))
    {

        unsigned int ret = 0;
        if (flags & IOW_TO_TUN)
        {
            ret |= TUN_WRITE;
        }
        if (flags & (IOW_TO_LINK|IOW_MBUF))
        {
            ret |= SOCKET_WRITE;
        }
        c->c2.event_set_status = ret;
    }
    else
    {

        io_wait_dowork(c, flags);
    }
}
