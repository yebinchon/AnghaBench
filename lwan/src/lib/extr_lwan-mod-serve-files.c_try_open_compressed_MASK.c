#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {scalar_t__ st_mtime; scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct serve_files_priv {int /*<<< orphan*/  root_fd; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PATH_MAX ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  open_mode ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct serve_files_priv const*,int,size_t) ; 

__attribute__((used)) static int FUNC9(const char *relpath,
                               const struct serve_files_priv *priv,
                               const struct stat *uncompressed,
                               size_t *compressed_sz)
{
    char gzpath[PATH_MAX];
    struct stat st;
    int ret, fd;

    /* Try to serve a compressed file using sendfile() if $FILENAME.gz exists */
    ret = FUNC7(gzpath, PATH_MAX, "%s.gz", relpath + 1);
    if (FUNC1(ret < 0 || ret >= PATH_MAX))
        goto out;

    fd = FUNC6(priv->root_fd, gzpath, open_mode);
    if (FUNC1(fd < 0))
        goto out;

    ret = FUNC3(fd, &st);
    if (FUNC1(ret < 0))
        goto close_and_out;

    if (FUNC1(st.st_mtime < uncompressed->st_mtime))
        goto close_and_out;

    if (FUNC1(!FUNC5(st.st_mode)))
        goto close_and_out;

    if (FUNC0(FUNC4((size_t)st.st_size,
                                     (size_t)uncompressed->st_size))) {
        *compressed_sz = (size_t)st.st_size;

        FUNC8(priv, fd, *compressed_sz);

        return fd;
    }

close_and_out:
    FUNC2(fd);
out:
    *compressed_sz = 0;
    return -ENOENT;
}