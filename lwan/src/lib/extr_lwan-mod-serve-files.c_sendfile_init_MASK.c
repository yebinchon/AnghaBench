#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
struct serve_files_priv {int root_path_len; int /*<<< orphan*/  serve_precompressed_files; int /*<<< orphan*/  root_fd; } ;
struct TYPE_4__ {scalar_t__ fd; size_t size; } ;
struct TYPE_3__ {int fd; size_t size; } ;
struct sendfile_cache_data {TYPE_2__ uncompressed; TYPE_1__ compressed; } ;
struct file_cache_entry {int /*<<< orphan*/  mime_type; struct sendfile_cache_data sendfile_cache_data; } ;

/* Variables and functions */
#define  EACCES 130 
#define  EMFILE 129 
#define  ENFILE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  open_mode ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,struct serve_files_priv*,struct stat*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct serve_files_priv*,int,size_t) ; 

__attribute__((used)) static bool FUNC6(struct file_cache_entry *ce,
                          struct serve_files_priv *priv,
                          const char *full_path,
                          struct stat *st)
{
    struct sendfile_cache_data *sd = &ce->sendfile_cache_data;
    const char *relpath = full_path + priv->root_path_len;

    ce->mime_type = FUNC2(relpath);

    sd->uncompressed.fd = FUNC3(priv->root_fd, relpath + 1, open_mode);
    if (FUNC1(sd->uncompressed.fd < 0)) {
        switch (errno) {
        case ENFILE:
        case EMFILE:
        case EACCES:
            /* These errors should produce responses other than 404, so
             * store errno as the file descriptor.  */
            sd->uncompressed.fd = sd->compressed.fd = -errno;
            sd->compressed.size = sd->uncompressed.size = 0;

            return true;
        }

        return false;
    }

    /* If precompressed files can be served, try opening it */
    if (FUNC0(priv->serve_precompressed_files)) {
        size_t compressed_sz;
        int fd = FUNC4(relpath, priv, st, &compressed_sz);

        sd->compressed.fd = fd;
        sd->compressed.size = compressed_sz;
    }

    sd->uncompressed.size = (size_t)st->st_size;
    FUNC5(priv, sd->uncompressed.fd, sd->uncompressed.size);

    return true;
}