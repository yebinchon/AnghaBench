
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct buf_file_priv {int fd; } ;
typedef int RBuffer ;


 struct buf_file_priv* get_priv_file (int *) ;
 scalar_t__ r_sandbox_truncate (int ,int ) ;

__attribute__((used)) static bool buf_file_resize(RBuffer *b, ut64 newsize) {
 struct buf_file_priv *priv = get_priv_file (b);
 return r_sandbox_truncate (priv->fd, newsize) >= 0;
}
