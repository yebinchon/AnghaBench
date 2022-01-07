
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int ASSERT (int) ;
 int FD_SET (int,int *) ;
 int FD_SETSIZE ;

__attribute__((used)) static inline void
openvpn_fd_set(int fd, fd_set *setp)
{

    ASSERT(fd >= 0 && fd < FD_SETSIZE);

    FD_SET(fd, setp);
}
