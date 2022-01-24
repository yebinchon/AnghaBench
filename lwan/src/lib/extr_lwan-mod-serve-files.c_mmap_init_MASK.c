#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
struct serve_files_priv {int root_path_len; int /*<<< orphan*/  root_fd; } ;
struct TYPE_4__ {scalar_t__ value; size_t len; } ;
struct mmap_cache_data {int /*<<< orphan*/  deflated; int /*<<< orphan*/  zstd; TYPE_1__ uncompressed; int /*<<< orphan*/  brotli; } ;
struct file_cache_entry {int /*<<< orphan*/  mime_type; struct mmap_cache_data mmap_cache_data; } ;

/* Variables and functions */
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  open_mode ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC9(struct file_cache_entry *ce,
                      struct serve_files_priv *priv,
                      const char *full_path,
                      struct stat *st)
{
    struct mmap_cache_data *md = &ce->mmap_cache_data;
    const char *path = full_path + priv->root_path_len;
    int file_fd;
    bool success;

    path += *path == '/';

    file_fd = FUNC7(priv->root_fd, path, open_mode);
    if (FUNC0(file_fd < 0))
        return false;

    md->uncompressed.value =
        FUNC6(NULL, (size_t)st->st_size, PROT_READ, MAP_SHARED, file_fd, 0);
    if (FUNC0(md->uncompressed.value == MAP_FAILED)) {
        success = false;
        goto close_file;
    }

    FUNC5(md->uncompressed.value, (size_t)st->st_size);

    md->uncompressed.len = (size_t)st->st_size;
    FUNC3(&md->uncompressed, &md->deflated);
#if defined(HAVE_BROTLI)
    brotli_value(&md->uncompressed, &md->brotli, &md->deflated);
#endif
#if defined(HAVE_ZSTD)
    zstd_value(&md->uncompressed, &md->zstd, &md->deflated);
#endif

    ce->mime_type =
        FUNC4(full_path + priv->root_path_len);

    success = true;

close_file:
    FUNC2(file_fd);

    return success;
}