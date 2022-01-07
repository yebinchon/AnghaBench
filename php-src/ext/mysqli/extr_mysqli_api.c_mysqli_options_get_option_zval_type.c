
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONST_CS ;
 int CONST_PERSISTENT ;
 int IS_LONG ;
 int IS_NULL ;
 int IS_STRING ;
 int REGISTER_LONG_CONSTANT (char*,int const,int) ;

__attribute__((used)) static int mysqli_options_get_option_zval_type(int option)
{
 switch (option) {







  case 147:

  case 134:

  case 145:
  case 144:

                case 143:

  case 142:
  case 137:
  case 146:
  case 139:
  case 138:
  case 133:

  case 141:


  case 140:


  case 148:


 REGISTER_LONG_CONSTANT("MYSQLI_OPT_SSL_VERIFY_SERVER_CERT", 140, CONST_CS | CONST_PERSISTENT);




   return IS_LONG;


                case 128:


  case 129:

  case 136:
  case 135:
  case 150:
  case 130:
  case 131:



   return IS_STRING;

  default:
   return IS_NULL;
 }
}
