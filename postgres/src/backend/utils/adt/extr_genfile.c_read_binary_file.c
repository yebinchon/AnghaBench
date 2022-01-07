
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef int off_t ;
typedef scalar_t__ int64 ;
typedef int bytea ;
typedef scalar_t__ Size ;
typedef int FILE ;


 int * AllocateFile (char const*,int ) ;
 scalar_t__ ENOENT ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int FreeFile (int *) ;
 scalar_t__ MaxAllocSize ;
 int PG_BINARY_R ;
 int SEEK_END ;
 int SEEK_SET ;
 int SET_VARSIZE (int *,scalar_t__) ;
 int VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;
 scalar_t__ errno ;
 scalar_t__ ferror (int *) ;
 size_t fread (int ,int,size_t,int *) ;
 scalar_t__ fseeko (int *,int ,int ) ;
 scalar_t__ palloc (scalar_t__) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static bytea *
read_binary_file(const char *filename, int64 seek_offset, int64 bytes_to_read,
     bool missing_ok)
{
 bytea *buf;
 size_t nbytes;
 FILE *file;

 if (bytes_to_read < 0)
 {
  if (seek_offset < 0)
   bytes_to_read = -seek_offset;
  else
  {
   struct stat fst;

   if (stat(filename, &fst) < 0)
   {
    if (missing_ok && errno == ENOENT)
     return ((void*)0);
    else
     ereport(ERROR,
       (errcode_for_file_access(),
        errmsg("could not stat file \"%s\": %m", filename)));
   }

   bytes_to_read = fst.st_size - seek_offset;
  }
 }


 if (bytes_to_read > (MaxAllocSize - VARHDRSZ))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("requested length too large")));

 if ((file = AllocateFile(filename, PG_BINARY_R)) == ((void*)0))
 {
  if (missing_ok && errno == ENOENT)
   return ((void*)0);
  else
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not open file \"%s\" for reading: %m",
       filename)));
 }

 if (fseeko(file, (off_t) seek_offset,
      (seek_offset >= 0) ? SEEK_SET : SEEK_END) != 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not seek in file \"%s\": %m", filename)));

 buf = (bytea *) palloc((Size) bytes_to_read + VARHDRSZ);

 nbytes = fread(VARDATA(buf), 1, (size_t) bytes_to_read, file);

 if (ferror(file))
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not read file \"%s\": %m", filename)));

 SET_VARSIZE(buf, nbytes + VARHDRSZ);

 FreeFile(file);

 return buf;
}
