
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

const char *
SPI_result_code_string(int code)
{
 static char buf[64];

 switch (code)
 {
  case 154:
   return "SPI_ERROR_CONNECT";
  case 153:
   return "SPI_ERROR_COPY";
  case 150:
   return "SPI_ERROR_OPUNKNOWN";
  case 144:
   return "SPI_ERROR_UNCONNECTED";
  case 155:
   return "SPI_ERROR_ARGUMENT";
  case 149:
   return "SPI_ERROR_PARAM";
  case 146:
   return "SPI_ERROR_TRANSACTION";
  case 152:
   return "SPI_ERROR_NOATTRIBUTE";
  case 151:
   return "SPI_ERROR_NOOUTFUNC";
  case 145:
   return "SPI_ERROR_TYPUNKNOWN";
  case 148:
   return "SPI_ERROR_REL_DUPLICATE";
  case 147:
   return "SPI_ERROR_REL_NOT_FOUND";
  case 143:
   return "SPI_OK_CONNECT";
  case 138:
   return "SPI_OK_FINISH";
  case 139:
   return "SPI_OK_FETCH";
  case 128:
   return "SPI_OK_UTILITY";
  case 132:
   return "SPI_OK_SELECT";
  case 131:
   return "SPI_OK_SELINTO";
  case 137:
   return "SPI_OK_INSERT";
  case 141:
   return "SPI_OK_DELETE";
  case 130:
   return "SPI_OK_UPDATE";
  case 142:
   return "SPI_OK_CURSOR";
  case 136:
   return "SPI_OK_INSERT_RETURNING";
  case 140:
   return "SPI_OK_DELETE_RETURNING";
  case 129:
   return "SPI_OK_UPDATE_RETURNING";
  case 133:
   return "SPI_OK_REWRITTEN";
  case 135:
   return "SPI_OK_REL_REGISTER";
  case 134:
   return "SPI_OK_REL_UNREGISTER";
 }

 sprintf(buf, "Unrecognized SPI code %d", code);
 return buf;
}
