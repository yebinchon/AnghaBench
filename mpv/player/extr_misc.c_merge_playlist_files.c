
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct playlist_entry {char* filename; struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* first; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int bstr0 (char*) ;
 TYPE_1__ bstr_strip (int ) ;
 int playlist_add_file (struct playlist*,char*) ;
 int playlist_clear (struct playlist*) ;
 size_t strcspn (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* talloc_asprintf_append_buffer (char*,char*,scalar_t__) ;
 int talloc_free (char*) ;
 char* talloc_strdup (int *,char*) ;
 char* talloc_strdup_append_buffer (char*,char*) ;

void merge_playlist_files(struct playlist *pl)
{
    if (!pl->first)
        return;
    char *edl = talloc_strdup(((void*)0), "edl://");
    for (struct playlist_entry *e = pl->first; e; e = e->next) {
        if (e != pl->first)
            edl = talloc_strdup_append_buffer(edl, ";");

        if (e->filename[strcspn(e->filename, "=%,;\n")] ||
            bstr_strip(bstr0(e->filename)).len != strlen(e->filename))
        {

            edl = talloc_asprintf_append_buffer(edl, "%%%zd%%", strlen(e->filename));
        }
        edl = talloc_strdup_append_buffer(edl, e->filename);
    }
    playlist_clear(pl);
    playlist_add_file(pl, edl);
    talloc_free(edl);
}
