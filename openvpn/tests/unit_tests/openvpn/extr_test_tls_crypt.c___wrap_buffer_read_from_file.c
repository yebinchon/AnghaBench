
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 struct buffer alloc_buf_gc (scalar_t__,struct gc_arena*) ;
 int buf_write (struct buffer*,char const*,scalar_t__) ;
 int check_expected (char const*) ;
 scalar_t__ mock () ;
 scalar_t__ strlen (char const*) ;

struct buffer
__wrap_buffer_read_from_file(const char *filename, struct gc_arena *gc)
{
    check_expected(filename);

    const char *pem_str = (const char *) mock();
    struct buffer ret = alloc_buf_gc(strlen(pem_str) + 1, gc);
    buf_write(&ret, pem_str, strlen(pem_str) + 1);

    return ret;
}
