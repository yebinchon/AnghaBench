#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mrb_parser_state {int dummy; } ;
struct RProc {int dummy; } ;
typedef  int /*<<< orphan*/  mrbc_context ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct RProc* FUNC3 (int /*<<< orphan*/ *,struct mrb_parser_state*) ; 
 struct mrb_parser_state* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mrb_parser_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct RProc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC8(mrb_state *mrb, mrbc_context *cxt)
{
  struct RProc *proc;
  struct mrb_parser_state *parser;

  parser = FUNC4(mrb, "_=nil", cxt);
  if (parser == NULL) {
    FUNC1("create parser state error\n", stderr);
    FUNC2(mrb);
    FUNC0(EXIT_FAILURE);
  }

  proc = FUNC3(mrb, parser);
  FUNC7(mrb, proc, FUNC6(mrb), 0);

  FUNC5(parser);
}