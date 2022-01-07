
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_sparse_priv {int sparse; } ;
typedef int RList ;
typedef int RBuffer ;


 struct buf_sparse_priv* get_priv_sparse (int *) ;
 int * r_list_clone (int ) ;

__attribute__((used)) static RList *buf_sparse_nonempty_list(RBuffer *b) {
 struct buf_sparse_priv *priv = get_priv_sparse (b);
 return r_list_clone (priv->sparse);
}
