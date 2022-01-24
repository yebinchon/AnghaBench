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
struct nlmsghdr {int nlmsg_seq; int nlmsg_pid; scalar_t__ nlmsg_type; int nlmsg_flags; } ;

/* Variables and functions */
 scalar_t__ NLMSG_DONE ; 
 scalar_t__ NLMSG_ERROR ; 
 scalar_t__ FUNC0 (struct nlmsghdr*,int) ; 
 int NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(int fd, char *bufPtr, size_t sizeof_buffer, int seqNum, int pId)
{
    struct nlmsghdr *nlHdr;
    int readLen = 0, msgLen = 0;

 do {
        /* Recieve response from the kernel */
        if ((readLen = FUNC2(fd, bufPtr, sizeof_buffer - msgLen, 0)) < 0) {
            FUNC1("SOCK READ: ");
            return -1;
        }

        nlHdr = (struct nlmsghdr *) bufPtr;

        /* Check if the header is valid */
        if ((FUNC0(nlHdr, readLen) == 0)
            || (nlHdr->nlmsg_type == NLMSG_ERROR)) {
            FUNC1("Error in received packet");
            return -1;
        }

        /* Check if the its the last message */
        if (nlHdr->nlmsg_type == NLMSG_DONE) {
            break;
        } else {
            /* Else move the pointer to buffer appropriately */
            bufPtr += readLen;
            msgLen += readLen;
        }

        /* Check if its a multi part message */
        if ((nlHdr->nlmsg_flags & NLM_F_MULTI) == 0) {
            /* return if its not */
            break;
        }
    } while ((nlHdr->nlmsg_seq != seqNum) || (nlHdr->nlmsg_pid != pId));

    return msgLen;
}