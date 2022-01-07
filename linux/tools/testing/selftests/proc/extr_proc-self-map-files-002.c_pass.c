
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int buf ;


 int exit (int) ;
 int readlink (char*,char*,int) ;
 int snprintf (char*,int,char const*,unsigned long,unsigned long) ;

__attribute__((used)) static void pass(const char *fmt, unsigned long a, unsigned long b)
{
 char name[64];
 char buf[64];

 snprintf(name, sizeof(name), fmt, a, b);
 if (readlink(name, buf, sizeof(buf)) == -1)
  exit(1);
}
