
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t NONE_SELECTED ;
 size_t PATH_MAX ;
 int endselection () ;
 int link (char const*,char const*) ;
 char** messages ;
 size_t mkpath (char*,char*,char*) ;
 int printwait (char*,int*) ;
 char* pselbuf ;
 size_t selbufpos ;
 size_t strlen (char*) ;
 int symlink (char const*,char const*) ;
 char* xbasename (char*) ;
 int xstrlcpy (char*,char*,size_t) ;

__attribute__((used)) static int xlink(char *suffix, char *path, char *buf, int *presel, int type)
{
 int count = 0;
 char *pbuf = pselbuf, *fname;
 size_t pos = 0, len, r;
 int (*link_fn)(const char *, const char *) = ((void*)0);


 if (!selbufpos) {
  printwait(messages[NONE_SELECTED], presel);
  return -1;
 }

 endselection();

 if (type == 's')
  link_fn = &symlink;
 else
  link_fn = &link;

 while (pos < selbufpos) {
  len = strlen(pbuf);
  fname = xbasename(pbuf);
  r = mkpath(path, fname, buf);
  xstrlcpy(buf + r - 1, suffix, PATH_MAX - r - 1);

  if (!link_fn(pbuf, buf))
   ++count;

  pos += len + 1;
  pbuf += len + 1;
 }

 if (!count)
  printwait("none created", presel);

 return count;
}
