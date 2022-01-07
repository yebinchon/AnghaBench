
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_backed_buffer {size_t size; void* ptr; } ;
struct coro {int dummy; } ;
typedef int off_t ;


 scalar_t__ LIKELY (void*) ;
 void* MAP_FAILED ;
 int MAP_HUGETLB ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ UNLIKELY (int) ;
 int close (int) ;
 void* coro_malloc (struct coro*,size_t) ;
 struct file_backed_buffer* coro_malloc_full (struct coro*,int,int ) ;
 int create_temp_file () ;
 int free_post_buffer ;
 scalar_t__ ftruncate (int,int ) ;
 void* mmap (int *,size_t,int,int,int,int ) ;
 int munmap (void*,size_t) ;

__attribute__((used)) static void*
alloc_post_buffer(struct coro *coro, size_t size, bool allow_file)
{
    struct file_backed_buffer *buf;
    void *ptr = (void *)MAP_FAILED;
    int fd;

    if (LIKELY(size < 1<<20)) {
        ptr = coro_malloc(coro, size);

        if (LIKELY(ptr))
            return ptr;
    }

    if (UNLIKELY(!allow_file))
        return ((void*)0);

    fd = create_temp_file();
    if (UNLIKELY(fd < 0))
        return ((void*)0);

    if (UNLIKELY(ftruncate(fd, (off_t)size) < 0)) {
        close(fd);
        return ((void*)0);
    }

    if (MAP_HUGETLB) {
        ptr = mmap(((void*)0), size, PROT_READ | PROT_WRITE,
                   MAP_SHARED | MAP_HUGETLB, fd, 0);
    }
    if (UNLIKELY(ptr == MAP_FAILED))
        ptr = mmap(((void*)0), size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    close(fd);
    if (UNLIKELY(ptr == MAP_FAILED))
        return ((void*)0);

    buf = coro_malloc_full(coro, sizeof(*buf), free_post_buffer);
    if (UNLIKELY(!buf)) {
        munmap(ptr, size);
        return ((void*)0);
    }

    buf->ptr = ptr;
    buf->size = size;
    return ptr;
}
