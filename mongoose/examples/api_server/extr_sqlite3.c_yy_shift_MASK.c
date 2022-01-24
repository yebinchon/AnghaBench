#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t major; int /*<<< orphan*/  minor; scalar_t__ stateno; } ;
typedef  TYPE_1__ yyStackEntry ;
struct TYPE_7__ {scalar_t__ yyidx; scalar_t__ yyidxMax; scalar_t__ yystksz; TYPE_1__* yystack; } ;
typedef  TYPE_2__ yyParser ;
typedef  int /*<<< orphan*/  YYMINORTYPE ;
typedef  size_t YYCODETYPE ;
typedef  scalar_t__ YYACTIONTYPE ;

/* Variables and functions */
 scalar_t__ YYSTACKDEPTH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 char** yyTokenName ; 
 scalar_t__ yyTraceFILE ; 
 char* yyTracePrompt ; 

__attribute__((used)) static void FUNC3(
  yyParser *yypParser,          /* The parser to be shifted */
  int yyNewState,               /* The new state to shift in */
  int yyMajor,                  /* The major token to shift in */
  YYMINORTYPE *yypMinor         /* Pointer to the minor token to shift in */
){
  yyStackEntry *yytos;
  yypParser->yyidx++;
#ifdef YYTRACKMAXSTACKDEPTH
  if( yypParser->yyidx>yypParser->yyidxMax ){
    yypParser->yyidxMax = yypParser->yyidx;
  }
#endif
#if YYSTACKDEPTH>0 
  if( yypParser->yyidx>=YYSTACKDEPTH ){
    yyStackOverflow(yypParser, yypMinor);
    return;
  }
#else
  if( yypParser->yyidx>=yypParser->yystksz ){
    FUNC1(yypParser);
    if( yypParser->yyidx>=yypParser->yystksz ){
      FUNC2(yypParser, yypMinor);
      return;
    }
  }
#endif
  yytos = &yypParser->yystack[yypParser->yyidx];
  yytos->stateno = (YYACTIONTYPE)yyNewState;
  yytos->major = (YYCODETYPE)yyMajor;
  yytos->minor = *yypMinor;
#ifndef NDEBUG
  if( yyTraceFILE && yypParser->yyidx>0 ){
    int i;
    FUNC0(yyTraceFILE,"%sShift %d\n",yyTracePrompt,yyNewState);
    FUNC0(yyTraceFILE,"%sStack:",yyTracePrompt);
    for(i=1; i<=yypParser->yyidx; i++)
      FUNC0(yyTraceFILE," %s",yyTokenName[yypParser->yystack[i].major]);
    FUNC0(yyTraceFILE,"\n");
  }
#endif
}