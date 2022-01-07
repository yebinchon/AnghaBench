
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int nlmsg_seq; int nlmsg_pid; scalar_t__ nlmsg_type; int nlmsg_flags; } ;


 scalar_t__ NLMSG_DONE ;
 scalar_t__ NLMSG_ERROR ;
 scalar_t__ NLMSG_OK (struct nlmsghdr*,int) ;
 int NLM_F_MULTI ;
 int perror (char*) ;
 int recv (int,char*,size_t,int ) ;

__attribute__((used)) static int read_netlink(int fd, char *bufPtr, size_t sizeof_buffer, int seqNum, int pId)
{
    struct nlmsghdr *nlHdr;
    int readLen = 0, msgLen = 0;

 do {

        if ((readLen = recv(fd, bufPtr, sizeof_buffer - msgLen, 0)) < 0) {
            perror("SOCK READ: ");
            return -1;
        }

        nlHdr = (struct nlmsghdr *) bufPtr;


        if ((NLMSG_OK(nlHdr, readLen) == 0)
            || (nlHdr->nlmsg_type == NLMSG_ERROR)) {
            perror("Error in received packet");
            return -1;
        }


        if (nlHdr->nlmsg_type == NLMSG_DONE) {
            break;
        } else {

            bufPtr += readLen;
            msgLen += readLen;
        }


        if ((nlHdr->nlmsg_flags & NLM_F_MULTI) == 0) {

            break;
        }
    } while ((nlHdr->nlmsg_seq != seqNum) || (nlHdr->nlmsg_pid != pId));

    return msgLen;
}
