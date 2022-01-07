
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct rrdengine_journalfile* first; } ;
struct rrdengine_journalfile {struct rrdengine_journalfile* next; TYPE_1__ extents; struct rrdengine_journalfile* journalfile; } ;
struct TYPE_4__ {struct rrdengine_journalfile* first; } ;
struct rrdengine_instance {TYPE_2__ datafiles; } ;
struct rrdengine_datafile {struct rrdengine_datafile* next; TYPE_1__ extents; struct rrdengine_datafile* journalfile; } ;
struct extent_info {struct extent_info* next; TYPE_1__ extents; struct extent_info* journalfile; } ;


 int close_data_file (struct rrdengine_journalfile*) ;
 int close_journal_file (struct rrdengine_journalfile*,struct rrdengine_journalfile*) ;
 int freez (struct rrdengine_journalfile*) ;

void finalize_data_files(struct rrdengine_instance *ctx)
{
    struct rrdengine_datafile *datafile, *next_datafile;
    struct rrdengine_journalfile *journalfile;
    struct extent_info *extent, *next_extent;

    for (datafile = ctx->datafiles.first ; datafile != ((void*)0) ; datafile = next_datafile) {
        journalfile = datafile->journalfile;
        next_datafile = datafile->next;

        for (extent = datafile->extents.first ; extent != ((void*)0) ; extent = next_extent) {
            next_extent = extent->next;
            freez(extent);
        }
        close_journal_file(journalfile, datafile);
        close_data_file(datafile);
        freez(journalfile);
        freez(datafile);

    }
}
