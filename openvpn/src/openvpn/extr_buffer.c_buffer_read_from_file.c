
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gc_arena {int dummy; } ;
struct buffer {int member_0; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {size_t st_size; int member_0; } ;
typedef TYPE_1__ platform_stat_t ;
typedef int FILE ;


 int ASSERT (int ) ;
 int BPTR (struct buffer*) ;
 struct buffer alloc_buf_gc (size_t const,struct gc_arena*) ;
 int buf_inc_len (struct buffer*,scalar_t__) ;
 int buf_null_terminate (struct buffer*) ;
 int fclose (int *) ;
 scalar_t__ fread (int ,int,size_t const,int *) ;
 int free_buf_gc (struct buffer*,struct gc_arena*) ;
 int * platform_fopen (char const*,char*) ;
 scalar_t__ platform_stat (char const*,TYPE_1__*) ;

struct buffer
buffer_read_from_file(const char *filename, struct gc_arena *gc)
{
    struct buffer ret = { 0 };

    platform_stat_t file_stat = {0};
    if (platform_stat(filename, &file_stat) < 0)
    {
        return ret;
    }

    FILE *fp = platform_fopen(filename, "r");
    if (!fp)
    {
        return ret;
    }

    const size_t size = file_stat.st_size;
    ret = alloc_buf_gc(size + 1, gc);
    ssize_t read_size = fread(BPTR(&ret), 1, size, fp);
    if (read_size < 0)
    {
        free_buf_gc(&ret, gc);
        goto cleanup;
    }
    ASSERT(buf_inc_len(&ret, read_size));
    buf_null_terminate(&ret);

cleanup:
    fclose(fp);
    return ret;
}
