
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountinfo {unsigned long major; unsigned long minor; struct mountinfo* next; } ;


 scalar_t__ unlikely (int) ;

struct mountinfo *mountinfo_find(struct mountinfo *root, unsigned long major, unsigned long minor) {
    struct mountinfo *mi;

    for(mi = root; mi ; mi = mi->next)
        if(unlikely(mi->major == major && mi->minor == minor))
            return mi;

    return ((void*)0);
}
