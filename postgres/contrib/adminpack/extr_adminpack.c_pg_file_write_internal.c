
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
struct stat {int dummy; } ;
typedef scalar_t__ int64 ;
typedef int FILE ;


 int * AllocateFile (char*,char*) ;
 int ERRCODE_DUPLICATE_FILE ;
 int ERROR ;
 scalar_t__ FreeFile (int *) ;
 int VARDATA_ANY (int *) ;
 scalar_t__ VARSIZE_ANY_EXHDR (int *) ;
 char* convert_and_check_filename (int *,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ fwrite (int ,int,scalar_t__,int *) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int64
pg_file_write_internal(text *file, text *data, bool replace)
{
 FILE *f;
 char *filename;
 int64 count = 0;

 filename = convert_and_check_filename(file, 0);

 if (!replace)
 {
  struct stat fst;

  if (stat(filename, &fst) >= 0)
   ereport(ERROR,
     (ERRCODE_DUPLICATE_FILE,
      errmsg("file \"%s\" exists", filename)));

  f = AllocateFile(filename, "wb");
 }
 else
  f = AllocateFile(filename, "ab");

 if (!f)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\" for writing: %m",
      filename)));

 count = fwrite(VARDATA_ANY(data), 1, VARSIZE_ANY_EXHDR(data), f);
 if (count != VARSIZE_ANY_EXHDR(data) || FreeFile(f))
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not write file \"%s\": %m", filename)));

 return (count);
}
