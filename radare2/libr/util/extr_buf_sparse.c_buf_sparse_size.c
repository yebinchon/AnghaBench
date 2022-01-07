
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct buf_sparse_priv {int sparse; } ;
typedef int RBuffer ;


 struct buf_sparse_priv* get_priv_sparse (int *) ;
 scalar_t__ sparse_limits (int ,int *) ;

__attribute__((used)) static ut64 buf_sparse_size(RBuffer *b) {
 struct buf_sparse_priv *priv = get_priv_sparse (b);
 ut64 max;

 return sparse_limits (priv->sparse, &max)? max: 0;
}
