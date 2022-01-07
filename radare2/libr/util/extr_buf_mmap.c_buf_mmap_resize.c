
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_3__ {scalar_t__ length; int * buf; } ;
struct buf_mmap_priv {TYPE_1__ bytes_priv; TYPE_2__* mmap; } ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef int RBuffer ;


 struct buf_mmap_priv* get_priv_mmap (int *) ;
 int * r_mem_mmap_resize (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static bool buf_mmap_resize(RBuffer *b, ut64 newsize) {
 struct buf_mmap_priv *priv = get_priv_mmap (b);
 if (newsize > priv->mmap->len) {
  ut8 *t = r_mem_mmap_resize (priv->mmap, newsize);
  if (!t) {
   return 0;
  }
  priv->bytes_priv.buf = t;
 }
 priv->bytes_priv.length = newsize;
 return 1;
}
