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
struct option {char* name; int has_arg; char val; } ;
struct lwan_straitjacket {char const* user_name; char* chroot_path; } ;
struct lwan_config {char* config_file_path; char* listener; } ;
typedef  enum args { ____Placeholder_args } args ;

/* Variables and functions */
 int ARGS_FAILED ; 
 int ARGS_SERVE_FILES ; 
 int ARGS_USE_CONFIG ; 
 size_t PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*,struct option const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,struct lwan_config*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum args
FUNC10(int argc, char *argv[], struct lwan_config *config, char *root,
    struct lwan_straitjacket *sj)
{
    static const struct option opts[] = {
        { .name = "root", .has_arg = 1, .val = 'r' },
        { .name = "listen", .has_arg = 1, .val = 'l' },
        { .name = "help", .val = 'h' },
        { .name = "config", .has_arg = 1, .val = 'c' },
        { .name = "chroot", .val = 'C' },
        { .name = "user", .val = 'u', .has_arg = 1 },
        { .name = "modules", .val = 'm' },
        { .name = "handlers", .val = 'H' },
        { }
    };
    int c, optidx = 0;
    enum args result = ARGS_USE_CONFIG;

    while ((c = FUNC2(argc, argv, "Hmhr:l:c:u:C", opts, &optidx)) != -1) {
        switch (c) {
        case 'H':
            FUNC4();
            return ARGS_FAILED;

        case 'm':
            FUNC6();
            return ARGS_FAILED;

        case 'u':
            FUNC1((char *)sj->user_name);
            sj->user_name = (const char *)FUNC8(optarg);
            break;

        case 'C':
            sj->chroot_path = root;
            break;

        case 'c':
            FUNC1(config->config_file_path);
            config->config_file_path = FUNC8(optarg);
            result = ARGS_USE_CONFIG;
            break;

        case 'l':
            FUNC1(config->listener);
            config->listener = FUNC8(optarg);
            result = ARGS_SERVE_FILES;
            break;

        case 'r': {
            size_t len = FUNC9(optarg);

            if (len >= PATH_MAX) {
                FUNC0(stderr, "Root path length exeeds %zu characters\n", PATH_MAX);
                return ARGS_FAILED;
            }

            FUNC3(root, optarg, len + 1);
            result = ARGS_SERVE_FILES;
            break;
        }

        case 'h':
            FUNC5(argv[0], config);
            return ARGS_FAILED;

        default:
            FUNC7("Run %s --help for usage information.\n", argv[0]);
            return ARGS_FAILED;
        }
    }

    return result;
}