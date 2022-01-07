
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const ssize_t ;
typedef int socket_descriptor_t ;


 int D_LINK_ERRORS ;
 int MSG_NOSIGNAL ;
 int M_ERRNO ;
 int msg (int,char*) ;
 scalar_t__ send (int ,char const*,scalar_t__,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static bool
send_line(socket_descriptor_t sd,
          const char *buf)
{
    const ssize_t size = send(sd, buf, strlen(buf), MSG_NOSIGNAL);
    if (size != (ssize_t) strlen(buf))
    {
        msg(D_LINK_ERRORS | M_ERRNO, "send_line: TCP port write failed on send()");
        return 0;
    }
    return 1;
}
