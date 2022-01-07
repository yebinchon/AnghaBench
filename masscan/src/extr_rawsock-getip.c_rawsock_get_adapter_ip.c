
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct ifreq {struct sockaddr ifr_addr; int ifr_name; } ;


 int AF_INET ;
 int IFNAMSIZ ;
 int SIOCGIFADDR ;
 int SOCK_DGRAM ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char const*,char*) ;
 int ioctl (int,int ,struct ifreq*) ;
 int ntohl (int ) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int strcpy_s (int ,int ,char const*) ;
 char* strerror (int ) ;

unsigned
rawsock_get_adapter_ip(const char *ifname)
{
    int fd;
    struct ifreq ifr;
    struct sockaddr_in *sin;
    struct sockaddr *sa;
    int x;

    fd = socket(AF_INET, SOCK_DGRAM, 0);

    ifr.ifr_addr.sa_family = AF_INET;
    strcpy_s(ifr.ifr_name, IFNAMSIZ, ifname);

    x = ioctl(fd, SIOCGIFADDR, &ifr);
    if (x < 0) {
        fprintf(stderr, "ERROR:'%s': %s\n", ifname, strerror(errno));

        close(fd);
        return 0;
    }

    close(fd);

    sa = &ifr.ifr_addr;
    sin = (struct sockaddr_in *)sa;
    return ntohl(sin->sin_addr.s_addr);
}
