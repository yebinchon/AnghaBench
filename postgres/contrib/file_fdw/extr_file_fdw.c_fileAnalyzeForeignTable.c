
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int Relation ;
typedef int List ;
typedef int BlockNumber ;
typedef int AcquireSampleRowsFunc ;


 int BLCKSZ ;
 int ERROR ;
 int RelationGetRelid (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int fileGetOptions (int ,char**,int*,int **) ;
 int file_acquire_sample_rows ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static bool
fileAnalyzeForeignTable(Relation relation,
      AcquireSampleRowsFunc *func,
      BlockNumber *totalpages)
{
 char *filename;
 bool is_program;
 List *options;
 struct stat stat_buf;


 fileGetOptions(RelationGetRelid(relation), &filename, &is_program, &options);
 if (is_program)
  return 0;





 if (stat(filename, &stat_buf) < 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not stat file \"%s\": %m",
      filename)));





 *totalpages = (stat_buf.st_size + (BLCKSZ - 1)) / BLCKSZ;
 if (*totalpages < 1)
  *totalpages = 1;

 *func = file_acquire_sample_rows;

 return 1;
}
