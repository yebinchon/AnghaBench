
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_backed_buffer {int size; int ptr; } ;


 int free (struct file_backed_buffer*) ;
 int munmap (int ,int ) ;

__attribute__((used)) static void
free_post_buffer(void *data)
{
    struct file_backed_buffer *buf = data;

    munmap(buf->ptr, buf->size);
    free(buf);
}
