
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
struct buf_ref_priv {scalar_t__ size; scalar_t__ cur; scalar_t__ base; int parent; } ;
typedef int st64 ;
typedef int RBuffer ;


 int R_MIN (int ,scalar_t__) ;
 struct buf_ref_priv* get_priv_ref (int *) ;
 int r_buf_read_at (int ,scalar_t__,int *,int ) ;

__attribute__((used)) static st64 buf_ref_read(RBuffer *b, ut8 *buf, ut64 len) {
 struct buf_ref_priv *priv = get_priv_ref (b);
 if (priv->size < priv->cur) {
  return -1;
 }
 len = R_MIN (len, priv->size - priv->cur);
 st64 r = r_buf_read_at (priv->parent, priv->base + priv->cur, buf, len);
 if (r < 0) {
  return r;
 }
 priv->cur += r;
 return r;
}
