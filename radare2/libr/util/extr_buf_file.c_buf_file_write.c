
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
struct buf_file_priv {int fd; } ;
typedef int st64 ;
typedef int RBuffer ;


 struct buf_file_priv* get_priv_file (int *) ;
 int r_sandbox_write (int ,int const*,int ) ;

__attribute__((used)) static st64 buf_file_write(RBuffer *b, const ut8 *buf, ut64 len) {
 struct buf_file_priv *priv = get_priv_file (b);
 return r_sandbox_write (priv->fd, buf, len);
}
