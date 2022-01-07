
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t major; int minor; scalar_t__ stateno; } ;
typedef TYPE_1__ yyStackEntry ;
struct TYPE_7__ {scalar_t__ yyidx; scalar_t__ yyidxMax; scalar_t__ yystksz; TYPE_1__* yystack; } ;
typedef TYPE_2__ yyParser ;
typedef int YYMINORTYPE ;
typedef size_t YYCODETYPE ;
typedef scalar_t__ YYACTIONTYPE ;


 scalar_t__ YYSTACKDEPTH ;
 int fprintf (scalar_t__,char*,...) ;
 int yyGrowStack (TYPE_2__*) ;
 int yyStackOverflow (TYPE_2__*,int *) ;
 char** yyTokenName ;
 scalar_t__ yyTraceFILE ;
 char* yyTracePrompt ;

__attribute__((used)) static void yy_shift(
  yyParser *yypParser,
  int yyNewState,
  int yyMajor,
  YYMINORTYPE *yypMinor
){
  yyStackEntry *yytos;
  yypParser->yyidx++;
  if( yypParser->yyidx>=yypParser->yystksz ){
    yyGrowStack(yypParser);
    if( yypParser->yyidx>=yypParser->yystksz ){
      yyStackOverflow(yypParser, yypMinor);
      return;
    }
  }

  yytos = &yypParser->yystack[yypParser->yyidx];
  yytos->stateno = (YYACTIONTYPE)yyNewState;
  yytos->major = (YYCODETYPE)yyMajor;
  yytos->minor = *yypMinor;

  if( yyTraceFILE && yypParser->yyidx>0 ){
    int i;
    fprintf(yyTraceFILE,"%sShift %d\n",yyTracePrompt,yyNewState);
    fprintf(yyTraceFILE,"%sStack:",yyTracePrompt);
    for(i=1; i<=yypParser->yyidx; i++)
      fprintf(yyTraceFILE," %s",yyTokenName[yypParser->yystack[i].major]);
    fprintf(yyTraceFILE,"\n");
  }

}
