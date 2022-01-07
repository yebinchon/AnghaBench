
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
struct buf_bytes_priv {int * buf; int length; } ;
typedef int RBuffer ;


 struct buf_bytes_priv* get_priv_bytes (int *) ;

__attribute__((used)) static ut8 *buf_bytes_get_whole_buf(RBuffer *b, ut64 *sz) {
 struct buf_bytes_priv *priv = get_priv_bytes (b);
 if (sz) {
  *sz = priv->length;
 }
 return priv->buf;
}
