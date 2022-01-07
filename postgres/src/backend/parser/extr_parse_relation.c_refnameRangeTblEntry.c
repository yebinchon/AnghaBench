
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parentParseState; } ;
typedef int RangeTblEntry ;
typedef TYPE_1__ ParseState ;
typedef int Oid ;


 int InvalidOid ;
 int LookupNamespaceNoError (char const*) ;
 scalar_t__ OidIsValid (int ) ;
 int get_relname_relid (char const*,int ) ;
 int * scanNameSpaceForRefname (TYPE_1__*,char const*,int) ;
 int * scanNameSpaceForRelid (TYPE_1__*,int ,int) ;

RangeTblEntry *
refnameRangeTblEntry(ParseState *pstate,
      const char *schemaname,
      const char *refname,
      int location,
      int *sublevels_up)
{
 Oid relId = InvalidOid;

 if (sublevels_up)
  *sublevels_up = 0;

 if (schemaname != ((void*)0))
 {
  Oid namespaceId;
  namespaceId = LookupNamespaceNoError(schemaname);
  if (!OidIsValid(namespaceId))
   return ((void*)0);
  relId = get_relname_relid(refname, namespaceId);
  if (!OidIsValid(relId))
   return ((void*)0);
 }

 while (pstate != ((void*)0))
 {
  RangeTblEntry *result;

  if (OidIsValid(relId))
   result = scanNameSpaceForRelid(pstate, relId, location);
  else
   result = scanNameSpaceForRefname(pstate, refname, location);

  if (result)
   return result;

  if (sublevels_up)
   (*sublevels_up)++;
  else
   break;

  pstate = pstate->parentParseState;
 }
 return ((void*)0);
}
