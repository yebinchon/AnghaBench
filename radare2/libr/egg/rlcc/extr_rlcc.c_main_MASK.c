#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * error; TYPE_2__* output; } ;
typedef  TYPE_1__ mpc_result_t ;
typedef  int /*<<< orphan*/  mpc_parser_t ;
typedef  int /*<<< orphan*/  mpc_err_t ;
struct TYPE_10__ {int children_num; int /*<<< orphan*/  contents; int /*<<< orphan*/  tag; struct TYPE_10__** children; } ;
typedef  TYPE_2__ mpc_ast_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPCA_LANG_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 

int FUNC13(int argc, char **argv) {
	mpc_parser_t* Ident     = FUNC8("ident");
	mpc_parser_t* Number    = FUNC8("number");
	mpc_parser_t* Character = FUNC8("character");
	mpc_parser_t* String    = FUNC8("string");
	mpc_parser_t* Factor    = FUNC8("factor");
	mpc_parser_t* Term      = FUNC8("term");
	mpc_parser_t* Lexp      = FUNC8("lexp");
	mpc_parser_t* Stmt      = FUNC8("stmt");
	mpc_parser_t* Exp       = FUNC8("exp");
	mpc_parser_t* Vartype   = FUNC8("vartype");
	mpc_parser_t* Typeident = FUNC8("typeident");
	mpc_parser_t* Decls     = FUNC8("decls");
	mpc_parser_t* Args      = FUNC8("args");
	mpc_parser_t* Body      = FUNC8("body");
	mpc_parser_t* Comment   = FUNC8("comment");
	mpc_parser_t* Linecomment   = FUNC8("linecomment");
	mpc_parser_t* Asm = FUNC8("asm");
	mpc_parser_t* Procedure = FUNC8("procedure");
	mpc_parser_t* CProcedure = FUNC8("cprocedure");
	mpc_parser_t* Sigdef    = FUNC8("sigdef");
	mpc_parser_t* Sigbody   = FUNC8("sigbody");
	mpc_parser_t* Includes  = FUNC8("includes");
	mpc_parser_t* Smallc    = FUNC8("smallc");

	mpc_err_t* err = FUNC11(MPCA_LANG_DEFAULT,
			" ident     : /[a-zA-Z_][a-zA-Z0-9_]*/ ;                           \n"
			" number    : /[0-9]+/ ;                                           \n"
			" character : /'.'/ ;                                              \n"
			" string    : /\"(\\\\.|[^\"])*\"/ ;                               \n"
			"                                                                  \n"
			" factor    : '(' <lexp> ')'                                       \n"
			"           | <number>                                             \n"
			"           | <character>                                          \n"
			"           | <string>                                             \n"
			"           | <ident> '(' <lexp>? (',' <lexp>)* ')'                \n"
			"           | <ident> ;                                            \n"
			"                                                                  \n"
			" term      : <factor> (('*' | '/' | '%') <factor>)* ;             \n"
			" lexp      : <term> (('+' | '-') <term>)* ;                       \n"
			"                                                                  \n"
			" stmt      : '{' <stmt>* '}'                                      \n"
			"           | \"while\" '(' <exp> ')' <stmt>                       \n"
			"           | \"if\"    '(' <exp> ')' <stmt>                       \n"
			"           | <ident> '=' <lexp> ';'                               \n"
			"           | \"print\" '(' <lexp>? ')' ';'                        \n"
			"           | \"return\" <lexp>? ';'                               \n"
			"           | <ident> '(' (<number>|<ident>|<string>)? (',' (<string>|<number>|<ident>))* ')' ';' ;        \n"
			"                                                                  \n"
			" exp       : <lexp> '>' <lexp>                                    \n"
			"           | <lexp> '<' <lexp>                                    \n"
			"           | <lexp> \">=\" <lexp>                                 \n"
			"           | <lexp> \"<=\" <lexp>                                 \n"
			"           | <lexp> \"!=\" <lexp>                                 \n"
			"           | <lexp> \"==\" <lexp> ;                               \n"
			"                                                                  \n"
			" vartype   : (\"int\" | \"char\") ;                               \n"
			" typeident : <vartype> <ident> ;                                  \n"
			" decls     : (<typeident> ';')* ;                                 \n"
			" args      : <typeident>? (',' <typeident>)* ;                    \n"
			" body      : '{' <decls> <stmt>* '}' ;                            \n"
			" comment   : /\\/\\*([^\\*])*\\*\\// ;                            \n"
			" linecomment : /\\/\\/([^\\n])*/ ;                                \n"
			" asm       : /\\:([^\\n])*/ ;                                \n"
			" procedure : <ident> '@' \"global\" '(' <number>? ')' <body> ; \n"
			" cprocedure : <vartype> <ident> '(' <args> ')' <body> ; \n"
			" sigdef    : <ident> '@' <ident> '(' <number> ')' ';' ; \n"
			" sigbody   : '@' <ident> '(' <number> ')' ';' ; \n"
			" includes  : (\"#include\" <string>)* ;                           \n"
			" smallc    : /^/ (<comment>|<asm>|<linecomment>|<sigdef>|<sigbody>|<procedure>|<cprocedure>)* <includes> <decls> /$/ ; \n",
		Ident, Number, Character, String, Factor, Term, Lexp, Stmt, Exp,
		Vartype, Typeident, Decls, Args, Body, Comment, Linecomment, Asm, Procedure, CProcedure,
		Sigdef, Sigbody, Includes, Smallc, NULL);

	if (err != NULL) {
		FUNC7 (err);
		FUNC6 (err);
		FUNC1(1);
	}

#if 1
	if (argc > 1) {

		mpc_result_t r;
		if (FUNC9(argv[1], Smallc, &r)) {
			FUNC4(r.output, stderr);
			{
				int i;
				mpc_ast_t *root = r.output;
				for (i=0; i< root->children_num; i++) {
					mpc_ast_t *node = root->children[i];
					FUNC0 ("; TAG = %s    (%s)\n", node->tag, node->contents);
					FUNC12 (node);
				}
			}
			FUNC2(r.output);
		} else {
			FUNC7(r.error);
			FUNC6(r.error);
		}

	} else {

		mpc_result_t r;
		if (FUNC10("<stdin>", stdin, Smallc, &r)) {
			FUNC3(r.output);
			FUNC2(r.output);
		} else {
			FUNC7(r.error);
			FUNC6(r.error);
		}
	}
#endif

	FUNC5(17, Ident, Number, Character, String, Factor, Term, Lexp, Stmt, Exp,
			Vartype, Typeident, Decls, Args, Body, Comment, Procedure, CProcedure,
			Sigdef, Includes, Smallc);

	return 0;

}