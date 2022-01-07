
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
struct buf_ref_priv {scalar_t__ base; int size; int parent; } ;
typedef int RBuffer ;


 int R_MIN (scalar_t__,scalar_t__) ;
 struct buf_ref_priv* get_priv_ref (int *) ;
 scalar_t__ r_buf_size (int ) ;

__attribute__((used)) static bool buf_ref_resize(RBuffer *b, ut64 newsize) {
 struct buf_ref_priv *priv = get_priv_ref (b);
 ut64 parent_sz = r_buf_size (priv->parent);
 priv->size = R_MIN (parent_sz - priv->base, newsize);
 return 1;
}
