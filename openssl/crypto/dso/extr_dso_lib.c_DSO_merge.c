
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; char* (* merger ) (TYPE_2__*,char const*,char const*) ;TYPE_1__* meth; } ;
struct TYPE_6__ {char* (* dso_merger ) (TYPE_2__*,char const*,char const*) ;} ;
typedef TYPE_2__ DSO ;


 int DSO_FLAG_NO_NAME_TRANSLATION ;
 int DSO_F_DSO_MERGE ;
 int DSOerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 char* stub1 (TYPE_2__*,char const*,char const*) ;
 char* stub2 (TYPE_2__*,char const*,char const*) ;

char *DSO_merge(DSO *dso, const char *filespec1, const char *filespec2)
{
    char *result = ((void*)0);

    if (dso == ((void*)0) || filespec1 == ((void*)0)) {
        DSOerr(DSO_F_DSO_MERGE, ERR_R_PASSED_NULL_PARAMETER);
        return ((void*)0);
    }
    if ((dso->flags & DSO_FLAG_NO_NAME_TRANSLATION) == 0) {
        if (dso->merger != ((void*)0))
            result = dso->merger(dso, filespec1, filespec2);
        else if (dso->meth->dso_merger != ((void*)0))
            result = dso->meth->dso_merger(dso, filespec1, filespec2);
    }
    return result;
}
