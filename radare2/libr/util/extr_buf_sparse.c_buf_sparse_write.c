
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
struct buf_sparse_priv {int offset; int sparse; } ;
typedef scalar_t__ st64 ;
typedef int RBuffer ;


 struct buf_sparse_priv* get_priv_sparse (int *) ;
 scalar_t__ sparse_write (int ,int ,int const*,int ) ;

__attribute__((used)) static st64 buf_sparse_write(RBuffer *b, const ut8 *buf, ut64 len) {
 struct buf_sparse_priv *priv = get_priv_sparse (b);
 st64 r = sparse_write (priv->sparse, priv->offset, buf, len);
 priv->offset += r;
 return r;
}
