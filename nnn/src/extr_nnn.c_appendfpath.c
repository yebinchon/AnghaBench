
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PATH_MAX ;
 int errexit () ;
 scalar_t__ pselbuf ;
 scalar_t__ selbuflen ;
 scalar_t__ selbufpos ;
 scalar_t__ xrealloc (scalar_t__,scalar_t__) ;
 scalar_t__ xstrlcpy (scalar_t__,char const*,size_t const) ;

__attribute__((used)) static void appendfpath(const char *path, const size_t len)
{
 if ((selbufpos >= selbuflen) || ((len + 3) > (selbuflen - selbufpos))) {
  selbuflen += PATH_MAX;
  pselbuf = xrealloc(pselbuf, selbuflen);
  if (!pselbuf)
   errexit();
 }

 selbufpos += xstrlcpy(pselbuf + selbufpos, path, len);
}
