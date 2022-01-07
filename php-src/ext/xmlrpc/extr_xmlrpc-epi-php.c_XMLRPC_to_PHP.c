
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int XMLRPC_VALUE_TYPE ;
typedef scalar_t__ XMLRPC_VALUE ;


 char* XMLRPC_GetValueBase64 (scalar_t__) ;
 int XMLRPC_GetValueBoolean (scalar_t__) ;
 char const* XMLRPC_GetValueDateTime_ISO8601 (scalar_t__) ;
 int XMLRPC_GetValueDouble (scalar_t__) ;
 int XMLRPC_GetValueID (scalar_t__) ;
 int XMLRPC_GetValueInt (scalar_t__) ;
 char* XMLRPC_GetValueString (scalar_t__) ;
 int XMLRPC_GetValueStringLen (scalar_t__) ;
 int XMLRPC_GetValueType (scalar_t__) ;
 scalar_t__ XMLRPC_VectorNext (scalar_t__) ;
 scalar_t__ XMLRPC_VectorRewind (scalar_t__) ;
 int ZVAL_BOOL (int *,int ) ;
 int ZVAL_DOUBLE (int *,int ) ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRINGL (int *,char const*,int ) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ISUNDEF (int ) ;
 int add_zval (int *,int ,int *) ;
 int array_init (int *) ;
 int set_zval_xmlrpc_type (int *,int) ;
__attribute__((used)) static void XMLRPC_to_PHP(XMLRPC_VALUE el, zval *elem)
{
 const char* pStr;

 if (el) {
  XMLRPC_VALUE_TYPE type = XMLRPC_GetValueType(el);

  switch (type) {
   case 131:
    ZVAL_NULL(elem);
    break;
   case 129:
    pStr = XMLRPC_GetValueString(el);
    if (pStr) {
     ZVAL_STRINGL(elem, pStr, XMLRPC_GetValueStringLen(el));
    }
    break;
   case 130:
    ZVAL_LONG(elem, XMLRPC_GetValueInt(el));
    break;
   case 134:
    ZVAL_BOOL(elem, XMLRPC_GetValueBoolean(el));
    break;
   case 132:
    ZVAL_DOUBLE(elem, XMLRPC_GetValueDouble(el));
    break;
   case 133:
    ZVAL_STRINGL(elem, XMLRPC_GetValueDateTime_ISO8601(el), XMLRPC_GetValueStringLen(el));
    break;
   case 135:
    pStr = XMLRPC_GetValueBase64(el);
    if (pStr) {
     ZVAL_STRINGL(elem, pStr, XMLRPC_GetValueStringLen(el));
    }
    break;
   case 128:
    array_init(elem);
    {
     XMLRPC_VALUE xIter = XMLRPC_VectorRewind(el);

     while( xIter ) {
      zval val;
      ZVAL_UNDEF(&val);
      XMLRPC_to_PHP(xIter, &val);
      if (!Z_ISUNDEF(val)) {
       add_zval(elem, XMLRPC_GetValueID(xIter), &val);
      }
      xIter = XMLRPC_VectorNext(el);
     }
    }
    break;
   default:
    break;
  }
  set_zval_xmlrpc_type(elem, type);
 }
}
