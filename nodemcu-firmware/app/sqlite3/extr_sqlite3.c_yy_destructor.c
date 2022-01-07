
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int yyParser ;
struct TYPE_5__ {int pExpr; } ;
struct TYPE_6__ {int yy432; int yy362; int yy163; int yy259; int yy250; TYPE_1__ yy382; int yy219; } ;
typedef TYPE_2__ YYMINORTYPE ;
typedef int YYCODETYPE ;
struct TYPE_7__ {int db; } ;


 TYPE_4__* pParse ;
 int sqlite3ExprDelete (int ,int ) ;
 int sqlite3ExprListDelete (int ,int ) ;
 int sqlite3IdListDelete (int ,int ) ;
 int sqlite3ParserARG_FETCH ;
 int sqlite3SelectDelete (int ,int ) ;
 int sqlite3SrcListDelete (int ,int ) ;
 int sqlite3WithDelete (int ,int ) ;

__attribute__((used)) static void yy_destructor(
  yyParser *yypParser,
  YYCODETYPE yymajor,
  YYMINORTYPE *yypminor
){
  sqlite3ParserARG_FETCH;
  switch( yymajor ){
    case 161:
    case 192:
    case 193:
    case 203:
{
sqlite3SelectDelete(pParse->db, (yypminor->yy219));
}
      break;
    case 170:
    case 171:
{
sqlite3ExprDelete(pParse->db, (yypminor->yy382).pExpr);
}
      break;
    case 175:
    case 184:
    case 185:
    case 196:
    case 199:
    case 201:
    case 204:
    case 205:
    case 206:
    case 215:
    case 221:
    case 223:
{
sqlite3ExprListDelete(pParse->db, (yypminor->yy250));
}
      break;
    case 191:
    case 197:
    case 208:
    case 209:
{
sqlite3SrcListDelete(pParse->db, (yypminor->yy259));
}
      break;
    case 194:
    case 227:
{
sqlite3WithDelete(pParse->db, (yypminor->yy163));
}
      break;
    case 198:
    case 200:
    case 212:
    case 222:
    case 224:
{
sqlite3ExprDelete(pParse->db, (yypminor->yy362));
}
      break;
    case 213:
    case 214:
    case 217:
{
sqlite3IdListDelete(pParse->db, (yypminor->yy432));
}
      break;

    default: break;
  }
}
