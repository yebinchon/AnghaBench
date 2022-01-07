
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;
typedef int DIR ;


 int assert (int) ;
 int dirfd (int *) ;
 int readlinkat (int ,char const*,char*,int) ;

__attribute__((used)) static void f_lnk(DIR *d, const char *filename)
{
 char buf[4096];
 ssize_t rv;

 rv = readlinkat(dirfd(d), filename, buf, sizeof(buf));
 assert((0 <= rv && rv <= sizeof(buf)) || rv == -1);
}
