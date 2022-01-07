
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseExprKind ;
const char *
ParseExprKindName(ParseExprKind exprKind)
{
 switch (exprKind)
 {
  case 147:
   return "invalid expression context";
  case 144:
   return "extension expression";
  case 150:
   return "JOIN/ON";
  case 149:
   return "JOIN/USING";
  case 158:
   return "sub-SELECT in FROM";
  case 159:
   return "function in FROM";
  case 133:
   return "WHERE";
  case 141:
   return "POLICY";
  case 154:
   return "HAVING";
  case 160:
   return "FILTER";
  case 128:
   return "window PARTITION BY";
  case 129:
   return "window ORDER BY";
  case 131:
   return "window RANGE";
  case 130:
   return "window ROWS";
  case 132:
   return "window GROUPS";
  case 139:
   return "SELECT";
  case 151:
   return "INSERT";
  case 137:
  case 136:
   return "UPDATE";
  case 155:
   return "GROUP BY";
  case 145:
   return "ORDER BY";
  case 163:
   return "DISTINCT ON";
  case 148:
   return "LIMIT";
  case 146:
   return "OFFSET";
  case 140:
   return "RETURNING";
  case 135:
  case 134:
   return "VALUES";
  case 166:
  case 162:
   return "CHECK";
  case 165:
  case 157:
   return "DEFAULT";
  case 153:
   return "index expression";
  case 152:
   return "index predicate";
  case 168:
   return "USING";
  case 161:
   return "EXECUTE";
  case 138:
   return "WHEN";
  case 143:
   return "partition bound";
  case 142:
   return "PARTITION BY";
  case 167:
   return "CALL";
  case 164:
   return "WHERE";
  case 156:
   return "GENERATED AS";







 }
 return "unrecognized expression kind";
}
