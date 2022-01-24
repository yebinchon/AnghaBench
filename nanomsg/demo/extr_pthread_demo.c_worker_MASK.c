#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  timer ;
struct nn_msghdr {int msg_iovlen; void** msg_control; struct nn_iovec* msg_iov; void* msg_controllen; } ;
struct nn_iovec {void** iov_base; void* iov_len; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 void* NN_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_msghdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (int,struct nn_msghdr*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,struct nn_msghdr*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void *FUNC11 (void *arg)
{
    int fd = (intptr_t)arg; 

    /*  Main processing loop. */

    for (;;) {
        uint32_t timer;
        int rc;
        int timeout;
        uint8_t *body;
        void *control;
        struct nn_iovec iov;
        struct nn_msghdr hdr;

        FUNC2 (&hdr, 0, sizeof (hdr));
        control = NULL;
        iov.iov_base = &body;
        iov.iov_len = NN_MSG;
        hdr.msg_iov = &iov;
        hdr.msg_iovlen = 1;
        hdr.msg_control = &control;
        hdr.msg_controllen = NN_MSG;

        rc = FUNC6 (fd, &hdr, 0);
        if (rc < 0) {
            if (FUNC4 () == EBADF) {
                return (NULL);   /* Socket closed by another thread. */
            }
            /*  Any error here is unexpected. */
            FUNC0 (stderr, "nn_recv: %s\n", FUNC8 (FUNC4 ()));
            break;
        }

        if (rc != sizeof (uint32_t)) {
            FUNC0 (stderr, "nn_recv: wanted %d, but got %d\n",
                (int) sizeof (uint32_t), rc);
            FUNC5 (body);
            FUNC5 (control);
            continue;
        }

        FUNC1 (&timer, body, sizeof (timer));
        FUNC5 (body);

        /*  Poor mans usleep but in msec. */
        FUNC10 (NULL, 0, FUNC9 (timer));

        hdr.msg_iov = NULL;
        hdr.msg_iovlen = 0;

        rc = FUNC7 (fd, &hdr, 0);
        if (rc < 0) {
            FUNC0 (stderr, "nn_send: %s\n", FUNC8 (FUNC4 ()));
            FUNC5 (control);
        }
    }

    /*  We got here, so close the file.  That will cause the other threads
        to shut down too. */

    FUNC3 (fd);
    return (NULL);
}