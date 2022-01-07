
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
TrimExtension(char *filename, char *extension)
{
 int flen;
 int elen;

 if (extension == ((void*)0))
  return;

 elen = strlen(extension);
 flen = strlen(filename);

 if (flen > elen && strcmp(filename + flen - elen, extension) == 0)
  filename[flen - elen] = '\0';
}
