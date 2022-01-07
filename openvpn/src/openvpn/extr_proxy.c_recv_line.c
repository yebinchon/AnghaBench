
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct buffer {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ socket_descriptor_t ;
typedef int fd_set ;


 int ASSERT (int ) ;
 int CLEAR (struct buffer) ;
 int D_LINK_ERRORS ;
 int FD_ZERO (int *) ;
 int MSG_NOSIGNAL ;
 int M_ERRNO ;
 int M_INFO ;
 scalar_t__ buf_defined (struct buffer*) ;
 int buf_init (struct buffer*,int ) ;
 int buf_write_u8 (struct buffer*,char) ;
 int get_signal (int volatile*) ;
 scalar_t__ isprint (char) ;
 int isspace (char) ;
 int msg (int,char*,...) ;
 int openvpn_fd_set (scalar_t__,int *) ;
 int recv (scalar_t__,char*,int,int ) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static bool
recv_line(socket_descriptor_t sd,
          char *buf,
          int len,
          const int timeout_sec,
          const bool verbose,
          struct buffer *lookahead,
          volatile int *signal_received)
{
    struct buffer la;
    int lastc = 0;

    CLEAR(la);
    if (lookahead)
    {
        la = *lookahead;
    }

    while (1)
    {
        int status;
        ssize_t size;
        fd_set reads;
        struct timeval tv;
        uint8_t c;

        if (buf_defined(&la))
        {
            ASSERT(buf_init(&la, 0));
        }

        FD_ZERO(&reads);
        openvpn_fd_set(sd, &reads);
        tv.tv_sec = timeout_sec;
        tv.tv_usec = 0;

        status = select(sd + 1, &reads, ((void*)0), ((void*)0), &tv);

        get_signal(signal_received);
        if (*signal_received)
        {
            goto error;
        }


        if (status == 0)
        {
            if (verbose)
            {
                msg(D_LINK_ERRORS | M_ERRNO, "recv_line: TCP port read timeout expired");
            }
            goto error;
        }


        if (status < 0)
        {
            if (verbose)
            {
                msg(D_LINK_ERRORS | M_ERRNO, "recv_line: TCP port read failed on select()");
            }
            goto error;
        }


        size = recv(sd, &c, 1, MSG_NOSIGNAL);


        if (size != 1)
        {
            if (verbose)
            {
                msg(D_LINK_ERRORS | M_ERRNO, "recv_line: TCP port read failed on recv()");
            }
            goto error;
        }
        if (len > 1)
        {
            *buf++ = c;
            --len;
        }


        if (buf_defined(&la))
        {
            buf_write_u8(&la, c);
            if (!isprint(c) && !isspace(c))
            {
                if (verbose)
                {
                    msg(D_LINK_ERRORS | M_ERRNO, "recv_line: Non-ASCII character (%d) read on recv()", (int)c);
                }
                *lookahead = la;
                return 0;
            }
        }


        if (lastc == '\r' && c == '\n')
        {
            break;
        }

        lastc = c;
    }


    if (len > 0)
    {
        *buf++ = '\0';
    }

    return 1;

error:
    return 0;
}
