
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ GetFileAttributesW (int *) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int * mp_from_utf8 (int *,char const*) ;
 int talloc_free (int *) ;

__attribute__((used)) static bool exists(const char *filename)
{
    wchar_t *wfilename = mp_from_utf8(((void*)0), filename);
    bool result = GetFileAttributesW(wfilename) != INVALID_FILE_ATTRIBUTES;
    talloc_free(wfilename);
    return result;
}
