
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_bytes_priv {int offset; int length; } ;
typedef int st64 ;
typedef int RBuffer ;





 struct buf_bytes_priv* get_priv_bytes (int *) ;
 int r_warn_if_reached () ;

__attribute__((used)) static st64 buf_bytes_seek(RBuffer *b, st64 addr, int whence) {
 struct buf_bytes_priv *priv = get_priv_bytes (b);
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
  priv->offset = priv->length + addr;
  break;
 default:
  r_warn_if_reached ();
  return -1;
 }
 return priv->offset;
}
