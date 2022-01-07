
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct buf_sparse_priv {int sparse; } ;
struct TYPE_4__ {int priv; } ;
typedef TYPE_1__ RBuffer ;


 int R_FREE (int ) ;
 struct buf_sparse_priv* get_priv_sparse (TYPE_1__*) ;
 int r_list_free (int ) ;

__attribute__((used)) static bool buf_sparse_fini(RBuffer *b) {
 struct buf_sparse_priv *priv = get_priv_sparse (b);
 r_list_free (priv->sparse);
 R_FREE (b->priv);
 return 1;
}
