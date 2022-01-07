
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ datadir_source ;
 char* libpqGetFile (char const*,size_t*) ;
 char* slurpFile (scalar_t__,char const*,size_t*) ;

char *
fetchFile(const char *filename, size_t *filesize)
{
 if (datadir_source)
  return slurpFile(datadir_source, filename, filesize);
 else
  return libpqGetFile(filename, filesize);
}
