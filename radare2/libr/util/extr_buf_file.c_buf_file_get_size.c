
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct buf_file_priv {int fd; } ;
typedef int RBuffer ;


 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 struct buf_file_priv* get_priv_file (int *) ;
 int r_sandbox_lseek (int ,int,int ) ;

__attribute__((used)) static ut64 buf_file_get_size(RBuffer *b) {
 struct buf_file_priv *priv = get_priv_file (b);
 int pos = r_sandbox_lseek (priv->fd, 0, SEEK_CUR);
 int res = r_sandbox_lseek (priv->fd, 0, SEEK_END);
 r_sandbox_lseek (priv->fd, pos, SEEK_SET);
 return (ut64)res;
}
