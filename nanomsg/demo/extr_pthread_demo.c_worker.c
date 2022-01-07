
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
typedef int uint32_t ;
typedef int timer ;
struct nn_msghdr {int msg_iovlen; void** msg_control; struct nn_iovec* msg_iov; void* msg_controllen; } ;
struct nn_iovec {void** iov_base; void* iov_len; } ;
typedef int hdr ;


 scalar_t__ EBADF ;
 void* NN_MSG ;
 int fprintf (int ,char*,...) ;
 int memcpy (int *,void*,int) ;
 int memset (struct nn_msghdr*,int ,int) ;
 int nn_close (int) ;
 scalar_t__ nn_errno () ;
 int nn_freemsg (void*) ;
 int nn_recvmsg (int,struct nn_msghdr*,int ) ;
 int nn_sendmsg (int,struct nn_msghdr*,int ) ;
 char* nn_strerror (scalar_t__) ;
 int ntohl (int ) ;
 int poll (int *,int ,int ) ;
 int stderr ;

void *worker (void *arg)
{
    int fd = (intptr_t)arg;



    for (;;) {
        uint32_t timer;
        int rc;
        int timeout;
        uint8_t *body;
        void *control;
        struct nn_iovec iov;
        struct nn_msghdr hdr;

        memset (&hdr, 0, sizeof (hdr));
        control = ((void*)0);
        iov.iov_base = &body;
        iov.iov_len = NN_MSG;
        hdr.msg_iov = &iov;
        hdr.msg_iovlen = 1;
        hdr.msg_control = &control;
        hdr.msg_controllen = NN_MSG;

        rc = nn_recvmsg (fd, &hdr, 0);
        if (rc < 0) {
            if (nn_errno () == EBADF) {
                return (((void*)0));
            }

            fprintf (stderr, "nn_recv: %s\n", nn_strerror (nn_errno ()));
            break;
        }

        if (rc != sizeof (uint32_t)) {
            fprintf (stderr, "nn_recv: wanted %d, but got %d\n",
                (int) sizeof (uint32_t), rc);
            nn_freemsg (body);
            nn_freemsg (control);
            continue;
        }

        memcpy (&timer, body, sizeof (timer));
        nn_freemsg (body);


        poll (((void*)0), 0, ntohl (timer));

        hdr.msg_iov = ((void*)0);
        hdr.msg_iovlen = 0;

        rc = nn_sendmsg (fd, &hdr, 0);
        if (rc < 0) {
            fprintf (stderr, "nn_send: %s\n", nn_strerror (nn_errno ()));
            nn_freemsg (control);
        }
    }




    nn_close (fd);
    return (((void*)0));
}
