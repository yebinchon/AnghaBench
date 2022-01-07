
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_buf {int residual; } ;


 int free_buf (int *) ;

__attribute__((used)) static void
stream_buf_close(struct stream_buf *sb)
{
    free_buf(&sb->residual);
}
