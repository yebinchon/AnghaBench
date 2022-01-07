
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 char* nodeToString (void const*) ;
 int pfree (char*) ;
 char* pretty_format_node_dump (char*) ;
 int printf (char*,char*) ;
 int stdout ;

void
pprint(const void *obj)
{
 char *s;
 char *f;

 s = nodeToString(obj);
 f = pretty_format_node_dump(s);
 pfree(s);
 printf("%s\n", f);
 fflush(stdout);
 pfree(f);
}
