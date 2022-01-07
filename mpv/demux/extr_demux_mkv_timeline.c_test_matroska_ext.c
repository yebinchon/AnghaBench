
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcasecmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool test_matroska_ext(const char *filename)
{
    static const char *const exts[] = {".mkv", ".mka", ".mks", ".mk3d", ((void*)0)};
    for (int n = 0; exts[n]; n++) {
        const char *suffix = exts[n];
        int offset = strlen(filename) - strlen(suffix);

        if (offset > 0 && strcasecmp(filename + offset, suffix) == 0)
            return 1;
    }
    return 0;
}
