
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct buf_io_priv {int fd; TYPE_1__* iob; } ;
typedef int st64 ;
struct TYPE_2__ {int io; int (* fd_read ) (int ,int ,int *,int ) ;} ;
typedef int RBuffer ;


 struct buf_io_priv* get_priv_io (int *) ;
 int stub1 (int ,int ,int *,int ) ;

__attribute__((used)) static st64 buf_io_read(RBuffer *b, ut8 *buf, ut64 len) {
 struct buf_io_priv *priv = get_priv_io (b);
 return priv->iob->fd_read (priv->iob->io, priv->fd, buf, len);
}
