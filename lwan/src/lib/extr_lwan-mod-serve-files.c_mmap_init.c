
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct serve_files_priv {int root_path_len; int root_fd; } ;
struct TYPE_4__ {scalar_t__ value; size_t len; } ;
struct mmap_cache_data {int deflated; int zstd; TYPE_1__ uncompressed; int brotli; } ;
struct file_cache_entry {int mime_type; struct mmap_cache_data mmap_cache_data; } ;


 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 scalar_t__ UNLIKELY (int) ;
 int brotli_value (TYPE_1__*,int *,int *) ;
 int close (int) ;
 int deflate_value (TYPE_1__*,int *) ;
 int lwan_determine_mime_type_for_file_name (char const*) ;
 int lwan_madvise_queue (scalar_t__,size_t) ;
 scalar_t__ mmap (int *,size_t,int ,int ,int,int ) ;
 int open_mode ;
 int openat (int ,char const*,int ) ;
 int zstd_value (TYPE_1__*,int *,int *) ;

__attribute__((used)) static bool mmap_init(struct file_cache_entry *ce,
                      struct serve_files_priv *priv,
                      const char *full_path,
                      struct stat *st)
{
    struct mmap_cache_data *md = &ce->mmap_cache_data;
    const char *path = full_path + priv->root_path_len;
    int file_fd;
    bool success;

    path += *path == '/';

    file_fd = openat(priv->root_fd, path, open_mode);
    if (UNLIKELY(file_fd < 0))
        return 0;

    md->uncompressed.value =
        mmap(((void*)0), (size_t)st->st_size, PROT_READ, MAP_SHARED, file_fd, 0);
    if (UNLIKELY(md->uncompressed.value == MAP_FAILED)) {
        success = 0;
        goto close_file;
    }

    lwan_madvise_queue(md->uncompressed.value, (size_t)st->st_size);

    md->uncompressed.len = (size_t)st->st_size;
    deflate_value(&md->uncompressed, &md->deflated);







    ce->mime_type =
        lwan_determine_mime_type_for_file_name(full_path + priv->root_path_len);

    success = 1;

close_file:
    close(file_fd);

    return success;
}
