
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct buf_bytes_priv {scalar_t__ length; int * buf; } ;
struct TYPE_4__ {int Oxff_priv; } ;
typedef TYPE_1__ RBuffer ;


 struct buf_bytes_priv* get_priv_bytes (TYPE_1__*) ;
 int memset (int *,int ,scalar_t__) ;
 int * realloc (int *,scalar_t__) ;

__attribute__((used)) static bool buf_bytes_resize(RBuffer *b, ut64 newsize) {
 struct buf_bytes_priv *priv = get_priv_bytes (b);
 if (newsize > priv->length) {
  ut8 *t = realloc (priv->buf, newsize);
  if (!t) {
   return 0;
  }
  priv->buf = t;
  memset (priv->buf + priv->length, b->Oxff_priv, newsize - priv->length);
 }
 priv->length = newsize;
 return 1;
}
