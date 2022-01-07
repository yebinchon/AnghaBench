
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int relopt_string ;
typedef int relopt_real ;
typedef int relopt_int ;
struct TYPE_4__ {int type; int lockmode; int namelen; int kinds; int * desc; void* name; } ;
typedef TYPE_1__ relopt_gen ;
typedef int relopt_enum ;
typedef int relopt_bool ;
typedef int bits32 ;
typedef int MemoryContext ;
typedef int LOCKMODE ;


 int ERROR ;
 int MemoryContextSwitchTo (int ) ;





 int TopMemoryContext ;
 int elog (int ,char*,int) ;
 TYPE_1__* palloc (size_t) ;
 void* pstrdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static relopt_gen *
allocate_reloption(bits32 kinds, int type, const char *name, const char *desc,
       LOCKMODE lockmode)
{
 MemoryContext oldcxt;
 size_t size;
 relopt_gen *newoption;

 oldcxt = MemoryContextSwitchTo(TopMemoryContext);

 switch (type)
 {
  case 132:
   size = sizeof(relopt_bool);
   break;
  case 130:
   size = sizeof(relopt_int);
   break;
  case 129:
   size = sizeof(relopt_real);
   break;
  case 131:
   size = sizeof(relopt_enum);
   break;
  case 128:
   size = sizeof(relopt_string);
   break;
  default:
   elog(ERROR, "unsupported reloption type %d", type);
   return ((void*)0);
 }

 newoption = palloc(size);

 newoption->name = pstrdup(name);
 if (desc)
  newoption->desc = pstrdup(desc);
 else
  newoption->desc = ((void*)0);
 newoption->kinds = kinds;
 newoption->namelen = strlen(name);
 newoption->type = type;
 newoption->lockmode = lockmode;

 MemoryContextSwitchTo(oldcxt);

 return newoption;
}
