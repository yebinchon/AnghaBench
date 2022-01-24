#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ yyidx; } ;
typedef  TYPE_1__ yyParser ;
typedef  int /*<<< orphan*/  YYMINORTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  pParse ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sqlite3ParserARG_FETCH ; 
 int /*<<< orphan*/  sqlite3ParserARG_STORE ; 
 scalar_t__ yyTraceFILE ; 
 char* yyTracePrompt ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(yyParser *yypParser, YYMINORTYPE *yypMinor){
   sqlite3ParserARG_FETCH;
   yypParser->yyidx--;
#ifndef NDEBUG
   if( yyTraceFILE ){
     FUNC1(yyTraceFILE,"%sStack Overflow!\n",yyTracePrompt);
   }
#endif
   while( yypParser->yyidx>=0 ) FUNC3(yypParser);
   /* Here code is inserted which will execute if the parser
   ** stack every overflows */

  FUNC0(yypMinor); /* Silence some compiler warnings */
  FUNC2(pParse, "parser stack overflow");
   sqlite3ParserARG_STORE; /* Suppress warning about unused %extra_argument var */
}