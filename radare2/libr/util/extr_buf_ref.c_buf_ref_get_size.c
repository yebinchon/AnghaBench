
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct buf_ref_priv {int size; } ;
typedef int RBuffer ;


 struct buf_ref_priv* get_priv_ref (int *) ;

__attribute__((used)) static ut64 buf_ref_get_size(RBuffer *b) {
 struct buf_ref_priv *priv = get_priv_ref (b);
 return priv->size;
}
