
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static unsigned int parse_cid(const char *str)
{
 char *endptr = ((void*)0);
 unsigned long int n;

 errno = 0;
 n = strtoul(str, &endptr, 10);
 if (errno || *endptr != '\0') {
  fprintf(stderr, "malformed CID \"%s\"\n", str);
  exit(EXIT_FAILURE);
 }
 return n;
}
