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
typedef  int /*<<< orphan*/  mpc_parser_t ;

/* Variables and functions */
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  mpcf_ctor_str ; 
 int /*<<< orphan*/  mpcf_snd ; 

__attribute__((used)) static mpc_parser_t *FUNC10(char c) {
  switch (c) {
    case 'a': return FUNC3('\a');
    case 'f': return FUNC3('\f');
    case 'n': return FUNC3('\n');
    case 'r': return FUNC3('\r');
    case 't': return FUNC3('\t');
    case 'v': return FUNC3('\v');
    case 'b': return FUNC1(2, mpcf_snd, FUNC2(), FUNC6(mpcf_ctor_str), free);
    case 'B': return FUNC7(FUNC2(), free, mpcf_ctor_str);
    case 'A': return FUNC1(2, mpcf_snd, FUNC8(), FUNC6(mpcf_ctor_str), free);
    case 'Z': return FUNC1(2, mpcf_snd, FUNC5(), FUNC6(mpcf_ctor_str), free);
    case 'd': return FUNC4();
    case 'D': return FUNC7(FUNC4(), free, mpcf_ctor_str);
    case 's': return FUNC9();
    case 'S': return FUNC7(FUNC9(), free, mpcf_ctor_str);
    case 'w': return FUNC0();
    case 'W': return FUNC7(FUNC0(), free, mpcf_ctor_str);
    default: return NULL;
  }
}