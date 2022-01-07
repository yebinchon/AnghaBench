
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buf_io_priv {int fd; TYPE_1__* iob; } ;
typedef int st64 ;
struct TYPE_2__ {int io; int (* fd_seek ) (int ,int ,int ,int) ;} ;
typedef int RBuffer ;





 int R_IO_SEEK_CUR ;
 int R_IO_SEEK_END ;
 int R_IO_SEEK_SET ;
 struct buf_io_priv* get_priv_io (int *) ;
 int r_warn_if_reached () ;
 int stub1 (int ,int ,int ,int) ;

__attribute__((used)) static st64 buf_io_seek(RBuffer *b, st64 addr, int whence) {
 struct buf_io_priv *priv = get_priv_io (b);
 int io_whence;

 switch (whence) {
 default:
  r_warn_if_reached ();
 case 128:
  io_whence = R_IO_SEEK_SET;
  break;
 case 129:
  io_whence = R_IO_SEEK_END;
  break;
 case 130:
  io_whence = R_IO_SEEK_CUR;
  break;
 }
 return priv->iob->fd_seek (priv->iob->io, priv->fd, addr, io_whence);
}
