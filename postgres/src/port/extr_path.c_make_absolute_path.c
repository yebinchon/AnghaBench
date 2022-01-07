
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 size_t MAXPGPATH ;
 char* _ (char*) ;
 int canonicalize_path (char*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 scalar_t__ getcwd (char*,size_t) ;
 int is_absolute_path (char const*) ;
 char* malloc (int) ;
 int sprintf (char*,char*,char*,char const*) ;
 int stderr ;
 char* strdup (char const*) ;
 char* strerror (int) ;
 int strlen (char const*) ;

char *
make_absolute_path(const char *path)
{
 char *new;


 if (path == ((void*)0))
  return ((void*)0);

 if (!is_absolute_path(path))
 {
  char *buf;
  size_t buflen;

  buflen = MAXPGPATH;
  for (;;)
  {
   buf = malloc(buflen);
   if (!buf)
   {

    ereport(ERROR,
      (errcode(ERRCODE_OUT_OF_MEMORY),
       errmsg("out of memory")));




   }

   if (getcwd(buf, buflen))
    break;
   else if (errno == ERANGE)
   {
    free(buf);
    buflen *= 2;
    continue;
   }
   else
   {
    int save_errno = errno;

    free(buf);
    errno = save_errno;

    elog(ERROR, "could not get current working directory: %m");





   }
  }

  new = malloc(strlen(buf) + strlen(path) + 2);
  if (!new)
  {
   free(buf);

   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));




  }
  sprintf(new, "%s/%s", buf, path);
  free(buf);
 }
 else
 {
  new = strdup(path);
  if (!new)
  {

   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));




  }
 }


 canonicalize_path(new);

 return new;
}
