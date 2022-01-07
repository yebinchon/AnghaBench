
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 char* format_node_dump (char*) ;
 char* nodeToString (void const*) ;
 int pfree (char*) ;
 int printf (char*,char*) ;
 int stdout ;

void
print(const void *obj)
{
 char *s;
 char *f;

 s = nodeToString(obj);
 f = format_node_dump(s);
 pfree(s);
 printf("%s\n", f);
 fflush(stdout);
 pfree(f);
}
