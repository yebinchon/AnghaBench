
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct buf_sparse_priv {int offset; int sparse; } ;
typedef int st64 ;
typedef int RBuffer ;





 struct buf_sparse_priv* get_priv_sparse (int *) ;
 int r_warn_if_reached () ;
 int sparse_limits (int ,int *) ;

__attribute__((used)) static st64 buf_sparse_seek(RBuffer *b, st64 addr, int whence) {
 struct buf_sparse_priv *priv = get_priv_sparse (b);
 ut64 max;
 if (addr < 0 && (-addr) > (st64)priv->offset) {
  return -1;
 }

 switch (whence) {
 case 130:
  priv->offset += addr;
  break;
 case 128:
  priv->offset = addr;
  break;
 case 129:
  if (!sparse_limits (priv->sparse, &max)) {
   max = 0;
  }
  priv->offset = max + addr;
  break;
 default:
  r_warn_if_reached ();
  return -1;
 }
 return priv->offset;
}
