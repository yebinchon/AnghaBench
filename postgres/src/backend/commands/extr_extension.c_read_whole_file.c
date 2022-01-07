
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int FILE ;


 int * AllocateFile (char const*,int ) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int FreeFile (int *) ;
 int MaxAllocSize ;
 int PG_BINARY_R ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ ferror (int *) ;
 int fread (char*,int,size_t,int *) ;
 scalar_t__ palloc (size_t) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static char *
read_whole_file(const char *filename, int *length)
{
 char *buf;
 FILE *file;
 size_t bytes_to_read;
 struct stat fst;

 if (stat(filename, &fst) < 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not stat file \"%s\": %m", filename)));

 if (fst.st_size > (MaxAllocSize - 1))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("file \"%s\" is too large", filename)));
 bytes_to_read = (size_t) fst.st_size;

 if ((file = AllocateFile(filename, PG_BINARY_R)) == ((void*)0))
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\" for reading: %m",
      filename)));

 buf = (char *) palloc(bytes_to_read + 1);

 *length = fread(buf, 1, bytes_to_read, file);

 if (ferror(file))
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not read file \"%s\": %m", filename)));

 FreeFile(file);

 buf[*length] = '\0';
 return buf;
}
