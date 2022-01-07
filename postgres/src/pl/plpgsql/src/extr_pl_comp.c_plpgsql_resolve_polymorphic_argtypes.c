
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Node ;







 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int INT4ARRAYOID ;
 int INT4OID ;
 int INT4RANGEOID ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int resolve_polymorphic_argtypes (int,int*,char*,int *) ;

__attribute__((used)) static void
plpgsql_resolve_polymorphic_argtypes(int numargs,
          Oid *argtypes, char *argmodes,
          Node *call_expr, bool forValidator,
          const char *proname)
{
 int i;

 if (!forValidator)
 {

  if (!resolve_polymorphic_argtypes(numargs, argtypes, argmodes,
            call_expr))
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("could not determine actual argument "
       "type for polymorphic function \"%s\"",
       proname)));
 }
 else
 {

  for (i = 0; i < numargs; i++)
  {
   switch (argtypes[i])
   {
    case 131:
    case 129:
    case 130:
     argtypes[i] = INT4OID;
     break;
    case 132:
     argtypes[i] = INT4ARRAYOID;
     break;
    case 128:
     argtypes[i] = INT4RANGEOID;
     break;
    default:
     break;
   }
  }
 }
}
