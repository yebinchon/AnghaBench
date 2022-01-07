
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {int num_redirects; int redirects; struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* first; } ;


 int MP_TARRAY_APPEND (struct playlist_entry*,int ,int,char*) ;
 char* talloc_strdup (struct playlist_entry*,char const*) ;

void playlist_add_redirect(struct playlist *pl, const char *redirected_from)
{
    for (struct playlist_entry *e = pl->first; e; e = e->next) {
        if (e->num_redirects >= 10)
            break;
        char *s = talloc_strdup(e, redirected_from);
        if (s)
            MP_TARRAY_APPEND(e, e->redirects, e->num_redirects, s);
    }
}
