
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct stat {int st_mode; } ;


 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int S_ISDIR (int ) ;
 int _DIAGASSERT (int ) ;
 scalar_t__ errno ;
 int getpid () ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ mkdir (char*,int) ;
 int open (char*,int,int) ;
 int stat (char*,struct stat*) ;

__attribute__((used)) static int
GETTEMP(char *path, int *doopen, int domkdir)
{
 char *start,
      *trv;
 struct stat sbuf;
 u_int pid;






 static char xtra[2] = "aa";
 int xcnt = 0;

 _DIAGASSERT(path != ((void*)0));


 pid = getpid();


 for (trv = path; *trv; ++trv)
  if (*trv == 'X')
   xcnt++;
  else
   xcnt = 0;


 if (xcnt > 0)
 {
  *--trv = xtra[0];
  xcnt--;
 }
 if (xcnt > 5)
 {
  *--trv = xtra[1];
  xcnt--;
 }


 for (; xcnt > 0; xcnt--)
 {
  *--trv = (pid % 10) + '0';
  pid /= 10;
 }


 if (xtra[0] != 'z')
  xtra[0]++;
 else
 {
  xtra[0] = 'a';
  if (xtra[1] != 'z')
   xtra[1]++;
  else
   xtra[1] = 'a';
 }





 for (start = trv + 1;; --trv)
 {
  if (trv <= path)
   break;
  if (*trv == '/')
  {
   int e;

   *trv = '\0';
   e = stat(path, &sbuf);
   *trv = '/';
   if (e == -1)
    return doopen == ((void*)0) && !domkdir;
   if (!S_ISDIR(sbuf.st_mode))
   {
    errno = ENOTDIR;
    return doopen == ((void*)0) && !domkdir;
   }
   break;
  }
 }

 for (;;)
 {
  if (doopen)
  {
   if ((*doopen =
     open(path, O_CREAT | O_EXCL | O_RDWR, 0600)) >= 0)
    return 1;
   if (errno != EEXIST)
    return 0;
  }
  else if (domkdir)
  {
   if (mkdir(path, 0700) >= 0)
    return 1;
   if (errno != EEXIST)
    return 0;
  }
  else if (lstat(path, &sbuf))
   return errno == ENOENT ? 1 : 0;


  for (trv = start;;)
  {
   if (!*trv)
    return 0;
   if (*trv == 'z')
    *trv++ = 'a';
   else
   {
    if (isdigit((unsigned char) *trv))
     *trv = 'a';
    else
     ++*trv;
    break;
   }
  }
 }

}
