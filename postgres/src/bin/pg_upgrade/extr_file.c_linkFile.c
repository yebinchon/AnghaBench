
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int pg_fatal (char*,char const*,char const*,char const*,char const*,int ) ;
 scalar_t__ pg_link_file (char const*,char const*) ;
 int strerror (int ) ;

void
linkFile(const char *src, const char *dst,
   const char *schemaName, const char *relName)
{
 if (pg_link_file(src, dst) < 0)
  pg_fatal("error while creating link for relation \"%s.%s\" (\"%s\" to \"%s\"): %s\n",
     schemaName, relName, src, dst, strerror(errno));
}
