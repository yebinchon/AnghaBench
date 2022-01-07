
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nr_of_files; int names; } ;
typedef TYPE_1__ mf_t ;


 int MP_TARRAY_APPEND (TYPE_1__*,int ,int ,char*) ;
 char* talloc_strdup (TYPE_1__*,char const*) ;

__attribute__((used)) static void mf_add(mf_t *mf, const char *fname)
{
    char *entry = talloc_strdup(mf, fname);
    MP_TARRAY_APPEND(mf, mf->names, mf->nr_of_files, entry);
}
