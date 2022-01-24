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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ELOOP ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOTDIR ; 
 scalar_t__ FUNC0 (int) ; 
 int MAXSYMLINKS ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 scalar_t__ FUNC7 (int,char*,struct stat*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int) ; 
 char* FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,size_t) ; 
 char* FUNC11 (char*,char const*,size_t) ; 
 char* FUNC12 (char*,char) ; 
 scalar_t__ FUNC13 (int,char*,char*,int) ; 
 scalar_t__ FUNC14 (char*,size_t) ; 
 char* FUNC15 (char const*,char*) ; 
 char* FUNC16 (char*,char*) ; 
 char* FUNC17 (char*) ; 
 size_t FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (char*,char*,size_t) ; 

char *
FUNC20(int dirfd, char *dirfdpath, const char *name, char *resolved,
        struct stat *st)
{
    char *rpath, *dest, extra_buf[PATH_MAX];
    const char *start, *end, *rpath_limit;
    int num_links = 0;
    ptrdiff_t dirfdlen;
    char *pathat;

    if (FUNC3(name == NULL)) {
        /* As per Single Unix Specification V2 we must return an error if
           either parameter is a null pointer.  We extend this to allow
           the RESOLVED parameter to be NULL in case the we are expected to
           allocate the room for the return value.  */
        errno = EINVAL;
        return NULL;
    }

    /* If any of the additional parameters are null, or if the name to
       resolve the real path is an absolute path, use the standard
       realpath() routine. */
    if (FUNC3(dirfd < 0 || dirfdpath == NULL || name[0] == '/'))
        return FUNC15(name, resolved);

    if (name[0] == '\0') {
        if (FUNC3(FUNC6(dirfd, st) < 0))
            return NULL;
        if (FUNC0(!resolved))
            return FUNC17(dirfdpath);
        return FUNC16(resolved, dirfdpath);
    }

    if (FUNC0(!resolved)) {
        rpath = FUNC8(PATH_MAX);
        if (FUNC3(!rpath))
            return NULL;
    } else
        rpath = resolved;
    rpath_limit = rpath + PATH_MAX;

    FUNC16(rpath, dirfdpath);
    dest = FUNC12(rpath, '\0');
    dirfdlen = dest - rpath;

    for (start = end = name; *start; start = end) {
        int n;

        /* Skip sequence of multiple path-separators.  */
        while (*start == '/')
            ++start;

        /* Find end of path component.  */
        for (end = start; *end && *end != '/'; ++end)
            /* Nothing.  */ ;

        if (end - start == 0)
            break;
        else if (end - start == 1 && start[0] == '.')
            /* nothing */ ;
        else if (end - start == 2 && start[0] == '.' && start[1] == '.') {
            /* Back up to previous component, ignore if at root already.  */
            if (dest > rpath + 1)
                while ((--dest)[-1] != '/');
        } else {
            size_t new_size;

            if (dest[-1] != '/')
                *dest++ = '/';

            if (dest + (end - start) >= rpath_limit) {
                ptrdiff_t dest_offset = dest - rpath;
                char *new_rpath;

                if (FUNC3(resolved != NULL)) {
                    errno = ENAMETOOLONG;
                    if (dest > rpath + 1)
                        dest--;
                    *dest = '\0';
                    goto error;
                }

                new_size = (size_t)(rpath_limit - rpath);
                if (end - start + 1 > PATH_MAX)
                    new_size += (size_t)(end - start + 1);
                else
                    new_size += PATH_MAX;
                new_rpath = (char *) FUNC14(rpath, new_size);
                if (FUNC3(new_rpath == NULL))
                    goto error;
                rpath = new_rpath;
                rpath_limit = rpath + new_size;

                dest = rpath + dest_offset;
            }

            dest = FUNC11(dest, start, (size_t)(end - start));
            *dest = '\0';

            if ((dirfdlen == 1 && *dirfdpath == '/') ||
                    FUNC19(rpath, dirfdpath, (size_t)dirfdlen)) {
                pathat = rpath;
            } else {
                pathat = rpath + dirfdlen + 1;
            }
            if (FUNC3(*pathat == '\0'))
                pathat = rpath;

            if (FUNC3(FUNC7(dirfd, pathat, st, AT_SYMLINK_NOFOLLOW) < 0))
                goto error;

            if (FUNC3(FUNC2(st->st_mode))) {
                char buf[PATH_MAX];
                size_t len;

                if (FUNC3(++num_links > MAXSYMLINKS)) {
                    errno = ELOOP;
                    goto error;
                }

                n = (int)FUNC13(dirfd, pathat, buf, PATH_MAX - 1);
                if (FUNC3(n < 0))
                    goto error;
                buf[n] = '\0';

                len = FUNC18(end);
                if (FUNC3((size_t)(PATH_MAX - n) <= len)) {
                    errno = ENAMETOOLONG;
                    goto error;
                }

                /* Careful here, end may be a pointer into extra_buf... */
                FUNC10(&extra_buf[n], end, len + 1);
                end = FUNC9(extra_buf, buf, (size_t)n);

                if (buf[0] == '/')
                    dest = rpath + 1;    /* It's an absolute symlink */
                else
                    /* Back up to previous component, ignore if at root already: */
                    if (dest > rpath + 1)
                        while ((--dest)[-1] != '/');
            } else if (FUNC3(!FUNC1(st->st_mode) && *end != '\0')) {
                errno = ENOTDIR;
                goto error;
            }
        }
    }

    if (dest > rpath + 1 && dest[-1] == '/')
        --dest;
    *dest = '\0';

    FUNC4(resolved == NULL || resolved == rpath);
    return rpath;

  error:
    FUNC4(resolved == NULL || resolved == rpath);
    if (resolved == NULL)
        FUNC5(rpath);
    return NULL;
}