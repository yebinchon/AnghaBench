
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ereport (int,int ) ;
 int errdetail_internal (char*,char*) ;
 int errmsg_internal (char*,char const*) ;
 char* format_node_dump (char*) ;
 char* nodeToString (void const*) ;
 int pfree (char*) ;
 char* pretty_format_node_dump (char*) ;

void
elog_node_display(int lev, const char *title, const void *obj, bool pretty)
{
 char *s;
 char *f;

 s = nodeToString(obj);
 if (pretty)
  f = pretty_format_node_dump(s);
 else
  f = format_node_dump(s);
 pfree(s);
 ereport(lev,
   (errmsg_internal("%s:", title),
    errdetail_internal("%s", f)));
 pfree(f);
}
