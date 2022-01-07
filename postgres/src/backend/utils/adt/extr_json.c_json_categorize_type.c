
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int JsonTypeCategory ;
typedef int CoercionPathType ;


 int ANYARRAYOID ;

 int COERCION_EXPLICIT ;
 int COERCION_PATH_FUNC ;



 int FirstNormalObjectId ;



 int InvalidOid ;


 int JSONTYPE_ARRAY ;
 int JSONTYPE_BOOL ;
 int JSONTYPE_CAST ;
 int JSONTYPE_COMPOSITE ;
 int JSONTYPE_DATE ;
 int JSONTYPE_JSON ;
 int JSONTYPE_NUMERIC ;
 int JSONTYPE_OTHER ;
 int JSONTYPE_TIMESTAMP ;
 int JSONTYPE_TIMESTAMPTZ ;

 int OidIsValid (int) ;
 int RECORDARRAYOID ;


 int find_coercion_pathway (int const,int,int ,int*) ;
 int getBaseType (int) ;
 int getTypeOutputInfo (int,int*,int*) ;
 int get_element_type (int) ;
 int type_is_rowtype (int) ;

__attribute__((used)) static void
json_categorize_type(Oid typoid,
      JsonTypeCategory *tcategory,
      Oid *outfuncoid)
{
 bool typisvarlena;


 typoid = getBaseType(typoid);

 *outfuncoid = InvalidOid;







 switch (typoid)
 {
  case 139:
   *tcategory = JSONTYPE_BOOL;
   break;

  case 135:
  case 134:
  case 133:
  case 137:
  case 136:
  case 130:
   getTypeOutputInfo(typoid, outfuncoid, &typisvarlena);
   *tcategory = JSONTYPE_NUMERIC;
   break;

  case 138:
   *tcategory = JSONTYPE_DATE;
   break;

  case 129:
   *tcategory = JSONTYPE_TIMESTAMP;
   break;

  case 128:
   *tcategory = JSONTYPE_TIMESTAMPTZ;
   break;

  case 131:
  case 132:
   getTypeOutputInfo(typoid, outfuncoid, &typisvarlena);
   *tcategory = JSONTYPE_JSON;
   break;

  default:

   if (OidIsValid(get_element_type(typoid)) || typoid == ANYARRAYOID
    || typoid == RECORDARRAYOID)
    *tcategory = JSONTYPE_ARRAY;
   else if (type_is_rowtype(typoid))
    *tcategory = JSONTYPE_COMPOSITE;
   else
   {

    *tcategory = JSONTYPE_OTHER;

    if (typoid >= FirstNormalObjectId)
    {
     Oid castfunc;
     CoercionPathType ctype;

     ctype = find_coercion_pathway(131, typoid,
              COERCION_EXPLICIT,
              &castfunc);
     if (ctype == COERCION_PATH_FUNC && OidIsValid(castfunc))
     {
      *tcategory = JSONTYPE_CAST;
      *outfuncoid = castfunc;
     }
     else
     {

      getTypeOutputInfo(typoid, outfuncoid, &typisvarlena);
     }
    }
    else
    {

     getTypeOutputInfo(typoid, outfuncoid, &typisvarlena);
    }
   }
   break;
 }
}
