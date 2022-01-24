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
struct lwan_url_map {char* prefix; int /*<<< orphan*/  member_1; } ;
struct lwan_straitjacket {scalar_t__ user_name; int /*<<< orphan*/  chroot_path; } ;
struct lwan_config {char* listener; char* config_file_path; } ;
struct lwan {int dummy; } ;

/* Variables and functions */
#define  ARGS_FAILED 130 
#define  ARGS_SERVE_FILES 129 
#define  ARGS_USE_CONFIG 128 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct lwan_config* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC5 (struct lwan*,struct lwan_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC7 (struct lwan*,struct lwan_url_map const*) ; 
 int /*<<< orphan*/  FUNC8 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct lwan_straitjacket*) ; 
 int FUNC11 (int,char**,struct lwan_config*,char*,struct lwan_straitjacket*) ; 
 char* FUNC12 (char*) ; 

int
FUNC13(int argc, char *argv[])
{
    struct lwan l;
    struct lwan_config c;
    struct lwan_straitjacket sj = {};
    char root_buf[PATH_MAX];
    char *root = root_buf;
    int ret = EXIT_SUCCESS;

    if (!FUNC2(root, PATH_MAX))
        return 1;

    c = *FUNC3();
    c.listener = FUNC12("*:8080");

    switch (FUNC11(argc, argv, &c, root, &sj)) {
    case ARGS_SERVE_FILES:
        FUNC9("Serving files from %s", root);

        if (sj.chroot_path) {
            root = "/";
        }
        FUNC10(&sj);

        FUNC5(&l, &c);

        const struct lwan_url_map map[] = {
            { .prefix = "/", FUNC0(root) },
            { }
        };
        FUNC7(&l, map);
        break;
    case ARGS_USE_CONFIG:
        FUNC10(&sj);
        if (c.config_file_path)
            FUNC5(&l, &c);
        else
            FUNC4(&l);
        break;
    case ARGS_FAILED:
        ret = EXIT_FAILURE;
        goto out;
    }

    FUNC6(&l);
    FUNC8(&l);

out:
    FUNC1(c.listener);
    FUNC1(c.config_file_path);
    FUNC1((char *)sj.user_name);

    return ret;
}