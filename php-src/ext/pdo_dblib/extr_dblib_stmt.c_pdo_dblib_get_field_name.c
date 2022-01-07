
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *pdo_dblib_get_field_name(int type)
{
 switch (type) {
  case 31: return "nvarchar";
  case 34: return "image";
  case 35: return "text";
  case 36: return "uniqueidentifier";
  case 37: return "varbinary";
  case 38: return "bigint";
  case 39: return "varchar";
  case 40: return "date";
  case 41: return "time";
  case 42: return "datetime2";
  case 43: return "datetimeoffset";
  case 45: return "binary";
  case 47: return "char";
  case 48: return "tinyint";
  case 50: return "bit";
  case 52: return "smallint";
  case 55: return "decimal";
  case 56: return "int";
  case 58: return "smalldatetime";
  case 59: return "real";
  case 60: return "money";
  case 61: return "datetime";
  case 62: return "float";
  case 63: return "numeric";
  case 98: return "sql_variant";
  case 99: return "ntext";
  case 104: return "bit";
  case 106: return "decimal";
  case 108: return "numeric";
  case 122: return "smallmoney";
  case 127: return "bigint";
  case 165: return "varbinary";
  case 167: return "varchar";
  case 173: return "binary";
  case 175: return "char";
  case 189: return "timestamp";
  case 231: return "nvarchar";
  case 239: return "nchar";
  case 240: return "geometry";
  case 241: return "xml";
  default: return "unknown";
 }
}
