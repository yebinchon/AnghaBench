
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut64 ;
struct buf_io_priv {int fd; TYPE_1__* iob; } ;
struct TYPE_2__ {int io; int (* fd_size ) (int ,int ) ;} ;
typedef int RBuffer ;


 struct buf_io_priv* get_priv_io (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static ut64 buf_io_get_size(RBuffer *b) {
 struct buf_io_priv *priv = get_priv_io (b);
 return priv->iob->fd_size (priv->iob->io, priv->fd);
}
