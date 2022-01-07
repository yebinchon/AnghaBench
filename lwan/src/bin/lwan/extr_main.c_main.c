
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_url_map {char* prefix; int member_1; } ;
struct lwan_straitjacket {scalar_t__ user_name; int chroot_path; } ;
struct lwan_config {char* listener; char* config_file_path; } ;
struct lwan {int dummy; } ;





 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int PATH_MAX ;
 int SERVE_FILES (char*) ;
 int free (char*) ;
 int getcwd (char*,int) ;
 struct lwan_config* lwan_get_default_config () ;
 int lwan_init (struct lwan*) ;
 int lwan_init_with_config (struct lwan*,struct lwan_config*) ;
 int lwan_main_loop (struct lwan*) ;
 int lwan_set_url_map (struct lwan*,struct lwan_url_map const*) ;
 int lwan_shutdown (struct lwan*) ;
 int lwan_status_info (char*,char*) ;
 int lwan_straitjacket_enforce (struct lwan_straitjacket*) ;
 int parse_args (int,char**,struct lwan_config*,char*,struct lwan_straitjacket*) ;
 char* strdup (char*) ;

int
main(int argc, char *argv[])
{
    struct lwan l;
    struct lwan_config c;
    struct lwan_straitjacket sj = {};
    char root_buf[PATH_MAX];
    char *root = root_buf;
    int ret = EXIT_SUCCESS;

    if (!getcwd(root, PATH_MAX))
        return 1;

    c = *lwan_get_default_config();
    c.listener = strdup("*:8080");

    switch (parse_args(argc, argv, &c, root, &sj)) {
    case 129:
        lwan_status_info("Serving files from %s", root);

        if (sj.chroot_path) {
            root = "/";
        }
        lwan_straitjacket_enforce(&sj);

        lwan_init_with_config(&l, &c);

        const struct lwan_url_map map[] = {
            { .prefix = "/", SERVE_FILES(root) },
            { }
        };
        lwan_set_url_map(&l, map);
        break;
    case 128:
        lwan_straitjacket_enforce(&sj);
        if (c.config_file_path)
            lwan_init_with_config(&l, &c);
        else
            lwan_init(&l);
        break;
    case 130:
        ret = EXIT_FAILURE;
        goto out;
    }

    lwan_main_loop(&l);
    lwan_shutdown(&l);

out:
    free(c.listener);
    free(c.config_file_path);
    free((char *)sj.user_name);

    return ret;
}
