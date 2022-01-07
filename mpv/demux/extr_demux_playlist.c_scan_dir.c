
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct pl_parser {TYPE_1__* s; } ;
struct dirent {char* d_name; } ;
struct TYPE_2__ {int cancel; } ;
typedef int DIR ;


 int MAX_DIR_STACK ;
 int MP_ERR (struct pl_parser*,char*) ;
 int MP_TARRAY_APPEND (struct pl_parser*,char**,int,char*) ;
 int MP_VERBOSE (struct pl_parser*,char*,char*) ;
 scalar_t__ S_ISDIR (int ) ;
 int closedir (int *) ;
 scalar_t__ mp_cancel_test (int ) ;
 char* mp_path_join (struct pl_parser*,char*,char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ same_st (struct stat*,struct stat*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlen (char*) ;

__attribute__((used)) static bool scan_dir(struct pl_parser *p, char *path,
                     struct stat *dir_stack, int num_dir_stack,
                     char ***files, int *num_files)
{
    if (strlen(path) >= 8192 || num_dir_stack == MAX_DIR_STACK)
        return 0;

    DIR *dp = opendir(path);
    if (!dp) {
        MP_ERR(p, "Could not read directory.\n");
        return 0;
    }

    struct dirent *ep;
    while ((ep = readdir(dp))) {
        if (ep->d_name[0] == '.')
            continue;

        if (mp_cancel_test(p->s->cancel))
            break;

        char *file = mp_path_join(p, path, ep->d_name);

        struct stat st;
        if (stat(file, &st) == 0 && S_ISDIR(st.st_mode)) {
            for (int n = 0; n < num_dir_stack; n++) {
                if (same_st(&dir_stack[n], &st)) {
                    MP_VERBOSE(p, "Skip recursive entry: %s\n", file);
                    goto skip;
                }
            }

            dir_stack[num_dir_stack] = st;
            scan_dir(p, file, dir_stack, num_dir_stack + 1, files, num_files);
        } else {
            MP_TARRAY_APPEND(p, *files, *num_files, file);
        }

        skip: ;
    }

    closedir(dp);
    return 1;
}
