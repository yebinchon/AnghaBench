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
struct serve_files_priv {int /*<<< orphan*/  auto_index_readme; } ;
struct lwan_strbuf {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 size_t FUNC0 (char const**) ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct lwan_strbuf*,char*,size_t) ; 
 char const* FUNC3 (struct lwan_strbuf*) ; 
 int FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int,char*,int) ; 
 int FUNC6 (char*,int,char*,char const*,char const*) ; 

__attribute__((used)) static const char *FUNC7(struct lwan_strbuf *readme,
                                       struct serve_files_priv *priv,
                                       const char *full_path)
{
    static const char *candidates[] = {"readme", "readme.txt", "read.me",
                                       "README.TXT", "README"};
    int fd = -1;

    if (!priv->auto_index_readme)
        return NULL;

    for (size_t i = 0; i < FUNC0(candidates); i++) {
        char buffer[PATH_MAX];
        int r;

        r = FUNC6(buffer, PATH_MAX, "%s/%s", full_path, candidates[i]);
        if (r < 0 || r >= PATH_MAX)
            continue;

        fd = FUNC4(buffer, O_RDONLY | O_CLOEXEC);
        if (fd < 0)
            continue;

        while (true) {
            ssize_t n = FUNC5(fd, buffer, sizeof(buffer));

            if (n < 0) {
                if (errno == EINTR)
                    continue;
                goto error;
            }
            if (!n)
                break;

            if (!FUNC2(readme, buffer, (size_t)n))
                goto error;
        }

        FUNC1(fd);
        return FUNC3(readme);
    }

error:
    if (fd >= 0)
        FUNC1(fd);
    return NULL;
}