
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIRSEP ;
 size_t DIRSEP_PRESERVE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int TEST_note (char*,char*) ;
 int chdir (char*) ;
 char* strpbrk (char*,int ) ;

__attribute__((used)) static int change_path(const char *file)
{
    char *s = OPENSSL_strdup(file);
    char *p = s;
    char *last = ((void*)0);
    int ret;

    if (s == ((void*)0))
        return -1;

    while ((p = strpbrk(p, DIRSEP)) != ((void*)0)) {
        last = p++;
    }
    if (last == ((void*)0))
        return 0;
    last[DIRSEP_PRESERVE] = 0;

    TEST_note("changing path to %s", s);
    ret = chdir(s);
    OPENSSL_free(s);
    return ret;
}
