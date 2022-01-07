
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_file_priv {int fd; } ;
typedef int st64 ;
typedef int RBuffer ;





 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 struct buf_file_priv* get_priv_file (int *) ;
 int r_sandbox_lseek (int ,int ,int) ;

__attribute__((used)) static st64 buf_file_seek(RBuffer *b, st64 addr, int whence) {
 struct buf_file_priv *priv = get_priv_file (b);
 switch (whence) {
 case 130: whence = SEEK_CUR; break;
 case 128: whence = SEEK_SET; break;
 case 129: whence = SEEK_END; break;
 }
 return r_sandbox_lseek (priv->fd, addr, whence);
}
