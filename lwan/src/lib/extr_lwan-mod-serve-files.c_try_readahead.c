
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serve_files_priv {size_t read_ahead; } ;


 scalar_t__ LIKELY (size_t) ;
 int lwan_readahead_queue (int,int ,size_t) ;

__attribute__((used)) static void
try_readahead(const struct serve_files_priv *priv, int fd, size_t size)
{
    if (size > priv->read_ahead)
        size = priv->read_ahead;

    if (LIKELY(size))
        lwan_readahead_queue(fd, 0, size);
}
