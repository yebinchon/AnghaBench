
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ LP_DIR_CTX ;


 int EINVAL ;
 int FindClose (int ) ;
 int errno ;
 int free (TYPE_1__*) ;

int LP_find_file_end(LP_DIR_CTX **ctx)
{
    if (ctx != ((void*)0) && *ctx != ((void*)0)) {
        FindClose((*ctx)->handle);
        free(*ctx);
        *ctx = ((void*)0);
        return 1;
    }
    errno = EINVAL;
    return 0;
}
