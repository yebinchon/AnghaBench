
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountinfo {struct mountinfo* next; } ;


 int mountinfo_free (struct mountinfo*) ;

void mountinfo_free_all(struct mountinfo *mi) {
    while(mi) {
        struct mountinfo *t = mi;
        mi = mi->next;

        mountinfo_free(t);
    }
}
