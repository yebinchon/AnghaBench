
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int h_length; int * h_addr_list; } ;
typedef int local ;


 int AF_INET ;
 void* INADDR_ANY ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 struct hostent* gethostbyname (char const*) ;
 int htons (int) ;
 scalar_t__ inet_aton (char const*,TYPE_1__*) ;
 int isdigit (char const) ;
 scalar_t__ listen (int,int) ;
 int memcpy (TYPE_1__*,int ,int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
setup_sock(const char *host, int port) {
    struct sockaddr_in local;
    struct hostent *h;
    int sock;

    memset(&local, 0, sizeof(local));
    local.sin_family = AF_INET;
    local.sin_port = htons(port);
    if (host == 0 || *host == 0) {
        local.sin_addr.s_addr = INADDR_ANY;
    }
    else if (!isdigit(host[0]) ||
        inet_aton(host, &local.sin_addr) == 0)
    {
        if ((h = gethostbyname(host)) != 0) {
            memcpy(&local.sin_addr, h->h_addr_list[0], h->h_length);
        }
        else {
            local.sin_addr.s_addr = INADDR_ANY;
        }
    }
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        return sock;
    }
    if (bind(sock, (struct sockaddr *) &local, sizeof(local)) < 0 ||
        listen(sock, 5) < 0)
    {
        close(sock);
        return -1;
    }
    return sock;
}
