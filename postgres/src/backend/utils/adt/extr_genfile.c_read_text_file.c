
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int int64 ;
typedef int bytea ;


 int VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (int *) ;
 int pg_verifymbstr (int ,scalar_t__,int) ;
 int * read_binary_file (char const*,int ,int ,int) ;

__attribute__((used)) static text *
read_text_file(const char *filename, int64 seek_offset, int64 bytes_to_read,
      bool missing_ok)
{
 bytea *buf;

 buf = read_binary_file(filename, seek_offset, bytes_to_read, missing_ok);

 if (buf != ((void*)0))
 {

  pg_verifymbstr(VARDATA(buf), VARSIZE(buf) - VARHDRSZ, 0);


  return (text *) buf;
 }
 else
  return ((void*)0);
}
