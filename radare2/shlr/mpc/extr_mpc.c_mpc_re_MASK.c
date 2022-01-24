#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * output; int /*<<< orphan*/  error; } ;
typedef  TYPE_1__ mpc_result_t ;
typedef  int /*<<< orphan*/  mpc_parser_t ;
typedef  int /*<<< orphan*/  (* mpc_dtor_t ) (char*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/ * FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ mpc_delete ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 int /*<<< orphan*/ * FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  mpcf_re_and ; 
 int /*<<< orphan*/  mpcf_re_escape ; 
 int /*<<< orphan*/  mpcf_re_or ; 
 int /*<<< orphan*/  mpcf_re_range ; 
 int /*<<< orphan*/  mpcf_re_repeat ; 
 int /*<<< orphan*/  mpcf_snd_free ; 
 int /*<<< orphan*/  mpcf_strfold ; 

mpc_parser_t *FUNC24(const char *re) {
  
  char *err_msg;
  mpc_parser_t *err_out;
  mpc_result_t r;
  mpc_parser_t *Regex, *Term, *Factor, *Base, *Range, *RegexEnclose; 
  
  Regex  = FUNC14("regex");
  Term   = FUNC14("term");
  Factor = FUNC14("factor");
  Base   = FUNC14("base");
  Range  = FUNC14("range");
  
  FUNC6(Regex, FUNC1(2, mpcf_re_or,
    Term, 
    FUNC13(FUNC1(2, mpcf_snd_free, FUNC4('|'), Regex, free)),
    (mpc_dtor_t)mpc_delete
  ));
  
  FUNC6(Term, FUNC12(mpcf_re_and, Factor));
  
  FUNC6(Factor, FUNC1(2, mpcf_re_repeat,
    Base,
    FUNC17(5,
      FUNC4('*'), FUNC4('+'), FUNC4('?'),
      FUNC3(FUNC11(), free),
      FUNC20()),
    (mpc_dtor_t)mpc_delete
  ));
  
  FUNC6(Base, FUNC17(4,
    FUNC18(Regex, (mpc_dtor_t)mpc_delete),
    FUNC22(Range, (mpc_dtor_t)mpc_delete),
    FUNC2(FUNC9(), mpcf_re_escape),
    FUNC2(FUNC15(")|"), mpcf_re_escape)
  ));
  
  FUNC6(Range, FUNC2(
    FUNC12(mpcf_strfold, FUNC17(2, FUNC9(), FUNC15("]"))),
    mpcf_re_range
  ));
  
  RegexEnclose = FUNC23(FUNC21(Regex), (mpc_dtor_t)mpc_delete);
  
  FUNC16(RegexEnclose);
  FUNC16(Regex);
  FUNC16(Term);
  FUNC16(Factor);
  FUNC16(Base);
  FUNC16(Range);
  
  if(!FUNC19("<mpc_re_compiler>", re, RegexEnclose, &r)) {
    err_msg = FUNC8(r.error);
    err_out = FUNC10("Invalid Regex: %s", err_msg);
    FUNC7(r.error);  
    FUNC0(err_msg);
    r.output = err_out;
  }
  
  FUNC5(6, RegexEnclose, Regex, Term, Factor, Base, Range);
  
  FUNC16(r.output);
  
  return r.output;
  
}