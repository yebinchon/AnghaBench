
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct buf_bytes_priv {scalar_t__ offset; scalar_t__ length; scalar_t__ buf; } ;
typedef int st64 ;
typedef int RBuffer ;


 struct buf_bytes_priv* get_priv_bytes (int *) ;
 int memmove (scalar_t__,int const*,scalar_t__) ;
 int r_buf_resize (int *,scalar_t__) ;

__attribute__((used)) static st64 buf_bytes_write(RBuffer *b, const ut8 *buf, ut64 len) {
 struct buf_bytes_priv *priv = get_priv_bytes (b);
 if (priv->offset > priv->length || priv->offset + len >= priv->length) {
  bool r = r_buf_resize (b, priv->offset + len);
  if (!r) {
   return -1;
  }
 }
 memmove (priv->buf + priv->offset, buf, len);
 priv->offset += len;
 return len;
}
