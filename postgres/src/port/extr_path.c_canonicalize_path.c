
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skip_drive (char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int trim_directory (char*) ;
 int trim_trailing_separator (char*) ;

void
canonicalize_path(char *path)
{
 char *p,
      *to_p;
 char *spath;
 bool was_sep = 0;
 int pending_strips;
 trim_trailing_separator(path);




 p = path;





 to_p = p;
 for (; *p; p++, to_p++)
 {

  while (*p == '/' && was_sep)
   p++;
  if (to_p != p)
   *to_p = *p;
  was_sep = (*p == '/');
 }
 *to_p = '\0';
 spath = skip_drive(path);
 pending_strips = 0;
 for (;;)
 {
  int len = strlen(spath);

  if (len >= 2 && strcmp(spath + len - 2, "/.") == 0)
   trim_directory(path);
  else if (strcmp(spath, ".") == 0)
  {

   if (pending_strips > 0)
    *spath = '\0';
   break;
  }
  else if ((len >= 3 && strcmp(spath + len - 3, "/..") == 0) ||
     strcmp(spath, "..") == 0)
  {
   trim_directory(path);
   pending_strips++;
  }
  else if (pending_strips > 0 && *spath != '\0')
  {

   trim_directory(path);
   pending_strips--;

   if (*spath == '\0')
    strcpy(spath, ".");
  }
  else
   break;
 }

 if (pending_strips > 0)
 {





  while (--pending_strips > 0)
   strcat(path, "../");
  strcat(path, "..");
 }
}
