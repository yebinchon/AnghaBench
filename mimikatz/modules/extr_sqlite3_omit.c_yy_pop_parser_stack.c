
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t major; int minor; } ;
typedef TYPE_1__ yyStackEntry ;
struct TYPE_6__ {int yytos; int yystack; } ;
typedef TYPE_2__ yyParser ;


 int assert (int) ;
 int fprintf (scalar_t__,char*,char*,char*) ;
 char** yyTokenName ;
 scalar_t__ yyTraceFILE ;
 char* yyTracePrompt ;
 int yy_destructor (TYPE_2__*,size_t,int *) ;

__attribute__((used)) static void yy_pop_parser_stack(yyParser *pParser){
  yyStackEntry *yytos;
  assert( pParser->yytos!=0 );
  assert( pParser->yytos > pParser->yystack );
  yytos = pParser->yytos--;

  if( yyTraceFILE ){
    fprintf(yyTraceFILE,"%sPopping %s\n",
      yyTracePrompt,
      yyTokenName[yytos->major]);
  }

  yy_destructor(pParser, yytos->major, &yytos->minor);
}
