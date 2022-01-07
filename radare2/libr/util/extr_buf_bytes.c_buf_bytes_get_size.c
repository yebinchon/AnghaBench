
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct buf_bytes_priv {int length; } ;
typedef int RBuffer ;


 struct buf_bytes_priv* get_priv_bytes (int *) ;

__attribute__((used)) static ut64 buf_bytes_get_size(RBuffer *b) {
 struct buf_bytes_priv *priv = get_priv_bytes (b);
 return priv->length;
}
