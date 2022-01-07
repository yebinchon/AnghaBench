
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct priv {int fd; scalar_t__ orig_size; int appending; int cancel; scalar_t__ use_poll; scalar_t__ regular_file; } ;
struct pollfd {int fd; int events; int revents; } ;
struct TYPE_5__ {struct priv* priv; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ int64_t ;


 int MAX_RETRIES ;
 int MP_WARN (TYPE_1__*,char*) ;
 int POLLIN ;
 int RETRY_TIMEOUT ;
 scalar_t__ get_size (TYPE_1__*) ;
 int mp_cancel_get_fd (int ) ;
 scalar_t__ mp_cancel_wait (int ,int ) ;
 int poll (struct pollfd*,int,int) ;
 int read (int,void*,int) ;

__attribute__((used)) static int fill_buffer(stream_t *s, void *buffer, int max_len)
{
    struct priv *p = s->priv;


    if (p->use_poll) {
        int c = mp_cancel_get_fd(p->cancel);
        struct pollfd fds[2] = {
            {.fd = p->fd, .events = POLLIN},
            {.fd = c, .events = POLLIN},
        };
        poll(fds, c >= 0 ? 2 : 1, -1);
        if (fds[1].revents & POLLIN)
            return -1;
    }


    for (int retries = 0; retries < MAX_RETRIES; retries++) {
        int r = read(p->fd, buffer, max_len);
        if (r > 0)
            return r;


        int64_t size = get_size(s);
        if (p->regular_file && size > p->orig_size && !p->appending) {
            MP_WARN(s, "File is apparently being appended to, will keep "
                    "retrying with timeouts.\n");
            p->appending = 1;
        }

        if (!p->appending || p->use_poll)
            break;

        if (mp_cancel_wait(p->cancel, RETRY_TIMEOUT))
            break;
    }

    return 0;
}
