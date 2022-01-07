
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct buf_mmap_priv {int mmap; } ;
struct TYPE_4__ {int priv; } ;
typedef TYPE_1__ RBuffer ;


 int R_FREE (int ) ;
 struct buf_mmap_priv* get_priv_mmap (TYPE_1__*) ;
 int r_file_mmap_free (int ) ;

__attribute__((used)) static bool buf_mmap_fini(RBuffer *b) {
 struct buf_mmap_priv *priv = get_priv_mmap (b);
 r_file_mmap_free (priv->mmap);
 R_FREE (b->priv);
 return 1;
}
