
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nDeps; scalar_t__ objType; char const* name; int * dependencies; int ext_member; } ;
typedef int PQExpBuffer ;
typedef TYPE_1__ DumpableObject ;


 scalar_t__ DO_EXTENSION ;
 int appendPQExpBuffer (int ,char*,char const*,...) ;
 int appendPQExpBufferStr (int ,char*) ;
 int fatal (char*,char const*,char const*) ;
 TYPE_1__* findObjectByDumpId (int ) ;
 char const* fmtId (char const*) ;

__attribute__((used)) static void
binary_upgrade_extension_member(PQExpBuffer upgrade_buffer,
        DumpableObject *dobj,
        const char *objtype,
        const char *objname,
        const char *objnamespace)
{
 DumpableObject *extobj = ((void*)0);
 int i;

 if (!dobj->ext_member)
  return;







 for (i = 0; i < dobj->nDeps; i++)
 {
  extobj = findObjectByDumpId(dobj->dependencies[i]);
  if (extobj && extobj->objType == DO_EXTENSION)
   break;
  extobj = ((void*)0);
 }
 if (extobj == ((void*)0))
  fatal("could not find parent extension for %s %s",
     objtype, objname);

 appendPQExpBufferStr(upgrade_buffer,
       "\n-- For binary upgrade, handle extension membership the hard way\n");
 appendPQExpBuffer(upgrade_buffer, "ALTER EXTENSION %s ADD %s ",
       fmtId(extobj->name),
       objtype);
 if (objnamespace && *objnamespace)
  appendPQExpBuffer(upgrade_buffer, "%s.", fmtId(objnamespace));
 appendPQExpBuffer(upgrade_buffer, "%s;\n", objname);
}
