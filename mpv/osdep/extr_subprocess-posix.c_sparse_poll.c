
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {scalar_t__ fd; int revents; } ;


 int MP_ARRAY_SIZE (struct pollfd*) ;
 int poll (struct pollfd*,int,int) ;

__attribute__((used)) static int sparse_poll(struct pollfd *fds, int num_fds, int timeout)
{
    struct pollfd p_fds[10];
    int map[10];
    if (num_fds > MP_ARRAY_SIZE(p_fds))
        return -1;
    int p_num_fds = 0;
    for (int n = 0; n < num_fds; n++) {
        map[n] = -1;
        if (fds[n].fd < 0)
            continue;
        map[n] = p_num_fds;
        p_fds[p_num_fds++] = fds[n];
    }
    int r = poll(p_fds, p_num_fds, timeout);
    for (int n = 0; n < num_fds; n++)
        fds[n].revents = (map[n] < 0 && r >= 0) ? 0 : p_fds[map[n]].revents;
    return r;
}
