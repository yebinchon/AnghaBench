
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_ref_priv {int cur; int size; } ;
typedef int st64 ;
typedef int RBuffer ;





 struct buf_ref_priv* get_priv_ref (int *) ;
 int r_warn_if_reached () ;

__attribute__((used)) static st64 buf_ref_seek(RBuffer *b, st64 addr, int whence) {
 struct buf_ref_priv *priv = get_priv_ref (b);
 switch (whence) {
 case 130:
  priv->cur += addr;
  break;
 case 128:
  priv->cur = addr;
  break;
 case 129:
  priv->cur = priv->size + addr;
  break;
 default:
  r_warn_if_reached ();
  return -1;
 }
 return priv->cur;
}
