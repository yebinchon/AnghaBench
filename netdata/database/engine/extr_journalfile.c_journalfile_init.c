
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv_file ;
struct rrdengine_journalfile {struct rrdengine_datafile* datafile; scalar_t__ pos; scalar_t__ file; } ;
struct rrdengine_datafile {int dummy; } ;



void journalfile_init(struct rrdengine_journalfile *journalfile, struct rrdengine_datafile *datafile)
{
    journalfile->file = (uv_file)0;
    journalfile->pos = 0;
    journalfile->datafile = datafile;
}
