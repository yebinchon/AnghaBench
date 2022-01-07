
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RIOMap ;
typedef int RIO ;


 int r_io_fd_write_at (int *,int,int ,int *,int) ;

__attribute__((used)) static int fd_write_at_wrap (RIO *io, int fd, ut64 addr, ut8 *buf, int len, RIOMap *map, void *user) {
 return r_io_fd_write_at (io, fd, addr, buf, len);
}
