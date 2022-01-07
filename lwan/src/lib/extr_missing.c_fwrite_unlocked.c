
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int FILE ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int fflush (int *) ;
 int fileno (int *) ;
 scalar_t__ write (int ,void const*,size_t) ;

size_t fwrite_unlocked(const void *ptr, size_t size, size_t n, FILE *stream)
{
    size_t to_write = size * n;
    const size_t total_to_write = to_write;

    if (!to_write)
        return 0;

    fflush (stream);

    while (to_write) {
        ssize_t r = write(fileno(stream), ptr, to_write);
        if (r < 0) {
            if (errno == EINTR)
                continue;
            break;
        }

        to_write -= (size_t)r;
    }

    return (total_to_write - to_write) / size;
}
