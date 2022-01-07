
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {void* l_to; void* l_from; int l_linenum; int l_filename; } ;


 size_t LF_FROM ;
 size_t LF_TO ;
 int LINK_FIELDS ;
 int _ (char*) ;
 void* ecpyalloc (char*) ;
 int error (int ) ;
 int filename ;
 struct link* growalloc (struct link*,int,int ,int *) ;
 int linenum ;
 struct link* links ;
 int namecheck (char*) ;
 int nlinks ;
 int nlinks_alloc ;

__attribute__((used)) static void
inlink(char **fields, int nfields)
{
 struct link l;

 if (nfields != LINK_FIELDS)
 {
  error(_("wrong number of fields on Link line"));
  return;
 }
 if (*fields[LF_FROM] == '\0')
 {
  error(_("blank FROM field on Link line"));
  return;
 }
 if (!namecheck(fields[LF_TO]))
  return;
 l.l_filename = filename;
 l.l_linenum = linenum;
 l.l_from = ecpyalloc(fields[LF_FROM]);
 l.l_to = ecpyalloc(fields[LF_TO]);
 links = growalloc(links, sizeof *links, nlinks, &nlinks_alloc);
 links[nlinks++] = l;
}
