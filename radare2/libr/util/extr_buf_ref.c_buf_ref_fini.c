
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct buf_ref_priv {int parent; } ;
struct TYPE_4__ {int priv; } ;
typedef TYPE_1__ RBuffer ;


 int R_FREE (int ) ;
 struct buf_ref_priv* get_priv_ref (TYPE_1__*) ;
 int r_buf_free (int ) ;

__attribute__((used)) static bool buf_ref_fini(RBuffer *b) {
 struct buf_ref_priv *priv = get_priv_ref (b);
 r_buf_free (priv->parent);
 R_FREE (b->priv);
 return 1;
}
