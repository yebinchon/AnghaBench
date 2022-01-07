
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SmackMatches {size_t* m_ids; unsigned int m_count; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int free (size_t*) ;
 int id_already_exists (size_t*,unsigned int,size_t const) ;
 scalar_t__ malloc (unsigned int) ;
 int stderr ;

__attribute__((used)) static void
smack_copy_matches(
    struct SmackMatches *row,
    const size_t *new_ids,
    unsigned new_count)
{
    size_t *total_ids;
    unsigned total_count;
    size_t *old_ids = row->m_ids;
    unsigned old_count = row->m_count;
    unsigned i;


    total_ids = (size_t *)malloc((old_count + new_count)*sizeof(*total_ids));
    if (total_ids == ((void*)0)) {
        fprintf(stderr, "%s: out of memory error\n", "smack");
        exit(1);
    }


    for (i=0; i<old_count; i++)
        total_ids[i] = old_ids[i];
    total_count = old_count;


    for (i=0; i<new_count; i++) {
        if (!id_already_exists(old_ids, old_count, new_ids[i]))
            total_ids[total_count++] = new_ids[i];
    }


    if (row->m_ids) {
        free(row->m_ids);
    }


    row->m_ids = total_ids;
    row->m_count = total_count;
}
