
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int JsonbTypeCategory ;
typedef int CoercionPathType ;


 int ANYARRAYOID ;

 int COERCION_EXPLICIT ;
 int COERCION_PATH_FUNC ;



 int FirstNormalObjectId ;



 int InvalidOid ;

 int JSONBTYPE_ARRAY ;
 int JSONBTYPE_BOOL ;
 int JSONBTYPE_COMPOSITE ;
 int JSONBTYPE_DATE ;
 int JSONBTYPE_JSON ;
 int JSONBTYPE_JSONB ;
 int JSONBTYPE_JSONCAST ;
 int JSONBTYPE_NUMERIC ;
 int JSONBTYPE_OTHER ;
 int JSONBTYPE_TIMESTAMP ;
 int JSONBTYPE_TIMESTAMPTZ ;


 int OidIsValid (int) ;
 int RECORDARRAYOID ;


 int find_coercion_pathway (int const,int,int ,int*) ;
 int getBaseType (int) ;
 int getTypeOutputInfo (int,int*,int*) ;
 int get_element_type (int) ;
 int type_is_rowtype (int) ;

__attribute__((used)) static void
jsonb_categorize_type(Oid typoid,
       JsonbTypeCategory *tcategory,
       Oid *outfuncoid)
{
 bool typisvarlena;


 typoid = getBaseType(typoid);

 *outfuncoid = InvalidOid;
 switch (typoid)
 {
  case 139:
   *tcategory = JSONBTYPE_BOOL;
   break;

  case 135:
  case 134:
  case 133:
  case 137:
  case 136:
  case 130:
   getTypeOutputInfo(typoid, outfuncoid, &typisvarlena);
   *tcategory = JSONBTYPE_NUMERIC;
   break;

  case 138:
   *tcategory = JSONBTYPE_DATE;
   break;

  case 129:
   *tcategory = JSONBTYPE_TIMESTAMP;
   break;

  case 128:
   *tcategory = JSONBTYPE_TIMESTAMPTZ;
   break;

  case 132:
   *tcategory = JSONBTYPE_JSONB;
   break;

  case 131:
   *tcategory = JSONBTYPE_JSON;
   break;

  default:

   if (OidIsValid(get_element_type(typoid)) || typoid == ANYARRAYOID
    || typoid == RECORDARRAYOID)
    *tcategory = JSONBTYPE_ARRAY;
   else if (type_is_rowtype(typoid))
    *tcategory = JSONBTYPE_COMPOSITE;
   else
   {

    *tcategory = JSONBTYPE_OTHER;





    if (typoid >= FirstNormalObjectId)
    {
     Oid castfunc;
     CoercionPathType ctype;

     ctype = find_coercion_pathway(131, typoid,
              COERCION_EXPLICIT, &castfunc);
     if (ctype == COERCION_PATH_FUNC && OidIsValid(castfunc))
     {
      *tcategory = JSONBTYPE_JSONCAST;
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
    break;
   }
 }
}
