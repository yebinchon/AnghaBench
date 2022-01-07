
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
 int ZVAL_FALSE (int *) ;
 int ZVAL_STRING (int *,char*) ;

__attribute__((used)) static void dblib_get_tds_version(zval *return_value, int tds)
{
 switch (tds) {
  case 139:
   ZVAL_STRING(return_value, "2.0");
   break;

  case 138:
   ZVAL_STRING(return_value, "3.4");
   break;

  case 137:
   ZVAL_STRING(return_value, "4.0");
   break;

  case 136:
   ZVAL_STRING(return_value, "4.2");
   break;

  case 135:
   ZVAL_STRING(return_value, "4.6");
   break;

  case 134:
   ZVAL_STRING(return_value, "4.9.5");
   break;

  case 133:
   ZVAL_STRING(return_value, "5.0");
   break;


  case 132:
   ZVAL_STRING(return_value, "7.0");
   break;



  case 131:
   ZVAL_STRING(return_value, "7.1");
   break;



  case 130:
   ZVAL_STRING(return_value, "7.2");
   break;



  case 129:
   ZVAL_STRING(return_value, "7.3");
   break;



  case 128:
   ZVAL_STRING(return_value, "7.4");
   break;


  default:
   ZVAL_FALSE(return_value);
   break;
 }
}
