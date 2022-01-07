
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mountinfo {char* super_options; scalar_t__ filesystem_hash; scalar_t__ filesystem; struct mountinfo* next; } ;


 scalar_t__ simple_hash (char const*) ;
 int strcmp (scalar_t__,char const*) ;
 size_t strlen (char const*) ;
 int strncmp (char*,char const*,size_t) ;
 scalar_t__ unlikely (int) ;

struct mountinfo *mountinfo_find_by_filesystem_super_option(struct mountinfo *root, const char *filesystem, const char *super_options) {
    struct mountinfo *mi;
    uint32_t filesystem_hash = simple_hash(filesystem);

    size_t solen = strlen(super_options);

    for(mi = root; mi ; mi = mi->next)
        if(unlikely(mi->filesystem
                && mi->super_options
                && mi->filesystem_hash == filesystem_hash
                && !strcmp(mi->filesystem, filesystem))) {


            char *s = mi->super_options, *e;
            while(*s) {
                e = s + 1;
                while(*e && *e != ',') e++;

                size_t len = e - s;
                if(unlikely(len == solen && !strncmp(s, super_options, len)))
                    return mi;

                if(*e == ',') s = ++e;
                else s = e;
            }
        }

    return ((void*)0);
}
