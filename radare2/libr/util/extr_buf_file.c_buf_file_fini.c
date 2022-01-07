
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct buf_file_priv {int fd; } ;
struct TYPE_4__ {int priv; } ;
typedef TYPE_1__ RBuffer ;


 int R_FREE (int ) ;
 struct buf_file_priv* get_priv_file (TYPE_1__*) ;
 int r_sandbox_close (int ) ;

__attribute__((used)) static bool buf_file_fini(RBuffer *b) {
 struct buf_file_priv *priv = get_priv_file (b);
 r_sandbox_close (priv->fd);
 R_FREE (b->priv);
 return 1;
}
