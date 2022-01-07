
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* filename; int flags; char* (* name_converter ) (TYPE_2__*,char const*) ;TYPE_1__* meth; } ;
struct TYPE_6__ {char* (* dso_name_converter ) (TYPE_2__*,char const*) ;} ;
typedef TYPE_2__ DSO ;


 int DSO_FLAG_NO_NAME_TRANSLATION ;
 int DSO_F_DSO_CONVERT_FILENAME ;
 int DSO_R_NO_FILENAME ;
 int DSOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 char* OPENSSL_strdup (char const*) ;
 char* stub1 (TYPE_2__*,char const*) ;
 char* stub2 (TYPE_2__*,char const*) ;

char *DSO_convert_filename(DSO *dso, const char *filename)
{
    char *result = ((void*)0);

    if (dso == ((void*)0)) {
        DSOerr(DSO_F_DSO_CONVERT_FILENAME, ERR_R_PASSED_NULL_PARAMETER);
        return ((void*)0);
    }
    if (filename == ((void*)0))
        filename = dso->filename;
    if (filename == ((void*)0)) {
        DSOerr(DSO_F_DSO_CONVERT_FILENAME, DSO_R_NO_FILENAME);
        return ((void*)0);
    }
    if ((dso->flags & DSO_FLAG_NO_NAME_TRANSLATION) == 0) {
        if (dso->name_converter != ((void*)0))
            result = dso->name_converter(dso, filename);
        else if (dso->meth->dso_name_converter != ((void*)0))
            result = dso->meth->dso_name_converter(dso, filename);
    }
    if (result == ((void*)0)) {
        result = OPENSSL_strdup(filename);
        if (result == ((void*)0)) {
            DSOerr(DSO_F_DSO_CONVERT_FILENAME, ERR_R_MALLOC_FAILURE);
            return ((void*)0);
        }
    }
    return result;
}
