
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct dirent {int d_name; } ;
struct TYPE_6__ {int expect_file_generations; char const* entry_name; int previous_entry_name; int * dir; } ;
typedef TYPE_1__ LP_DIR_CTX ;


 int EINVAL ;
 int ENOMEM ;
 int OPENSSL_strlcpy (char const*,int ,int) ;
 int errno ;
 int free (TYPE_1__*) ;
 scalar_t__ isdigit (char) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strcasecmp (char*,int ) ;
 int strlen (char const*) ;
 int strncpy (int ,char const*,int) ;

const char *LP_find_file(LP_DIR_CTX **ctx, const char *directory)
{
    struct dirent *direntry = ((void*)0);

    if (ctx == ((void*)0) || directory == ((void*)0)) {
        errno = EINVAL;
        return 0;
    }

    errno = 0;
    if (*ctx == ((void*)0)) {
        *ctx = malloc(sizeof(**ctx));
        if (*ctx == ((void*)0)) {
            errno = ENOMEM;
            return 0;
        }
        memset(*ctx, 0, sizeof(**ctx));
        (*ctx)->dir = opendir(directory);
        if ((*ctx)->dir == ((void*)0)) {
            int save_errno = errno;
            free(*ctx);
            *ctx = ((void*)0);
            errno = save_errno;
            return 0;
        }
    }
    direntry = readdir((*ctx)->dir);
    if (direntry == ((void*)0)) {
        return 0;
    }

    OPENSSL_strlcpy((*ctx)->entry_name, direntry->d_name,
                    sizeof((*ctx)->entry_name));
    return (*ctx)->entry_name;
}
