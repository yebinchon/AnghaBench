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
typedef  int /*<<< orphan*/  xtensa_isa ;
typedef  int /*<<< orphan*/  xtensa_insnbuf_word ;
typedef  int /*<<< orphan*/  xtensa_insnbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

xtensa_insnbuf
FUNC3 (xtensa_isa isa)
{
  xtensa_insnbuf result = (xtensa_insnbuf)
    FUNC1 (FUNC2 (isa) * sizeof (xtensa_insnbuf_word));
  FUNC0 (result, 0);
  return result;
}