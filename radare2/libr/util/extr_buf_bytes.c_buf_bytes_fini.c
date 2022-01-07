
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct buf_bytes_priv {int buf; scalar_t__ is_bufowner; } ;
struct TYPE_4__ {int priv; } ;
typedef TYPE_1__ RBuffer ;


 int R_FREE (int ) ;
 int free (int ) ;
 struct buf_bytes_priv* get_priv_bytes (TYPE_1__*) ;

__attribute__((used)) static bool buf_bytes_fini(RBuffer *b) {
 struct buf_bytes_priv *priv = get_priv_bytes (b);
 if (priv->is_bufowner) {
  free (priv->buf);
 }
 R_FREE (b->priv);
 return 1;
}
