
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut64 ;
struct buf_io_priv {int fd; TYPE_1__* iob; } ;
struct TYPE_2__ {int (* fd_resize ) (int ,int ,int ) ;int io; } ;
typedef int RBuffer ;


 struct buf_io_priv* get_priv_io (int *) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static bool buf_io_resize(RBuffer *b, ut64 newsize) {
 struct buf_io_priv *priv = get_priv_io (b);
 return priv->iob->fd_resize (priv->iob->io, priv->fd, newsize);
}
