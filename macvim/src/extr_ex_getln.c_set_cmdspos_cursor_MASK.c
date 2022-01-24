#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cmdlen; int cmdpos; int cmdspos; scalar_t__ cmdbuff; } ;

/* Variables and functions */
 int Columns ; 
 scalar_t__ KeyTyped ; 
 int MAXCOL ; 
 int Rows ; 
 TYPE_1__ ccline ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ has_mbyte ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5()
{
    int		i, m, c;

    FUNC3();
    if (KeyTyped)
    {
	m = Columns * Rows;
	if (m < 0)	/* overflow, Columns or Rows at weird value */
	    m = MAXCOL;
    }
    else
	m = MAXCOL;
    for (i = 0; i < ccline.cmdlen && i < ccline.cmdpos; ++i)
    {
	c = FUNC0(i);
#ifdef FEAT_MBYTE
	/* Count ">" for double-wide multi-byte char that doesn't fit. */
	if (has_mbyte)
	    correct_cmdspos(i, c);
#endif
	/* If the cmdline doesn't fit, show cursor on last visible char.
	 * Don't move the cursor itself, so we can still append. */
	if ((ccline.cmdspos += c) >= m)
	{
	    ccline.cmdspos -= c;
	    break;
	}
#ifdef FEAT_MBYTE
	if (has_mbyte)
	    i += (*mb_ptr2len)(ccline.cmdbuff + i) - 1;
#endif
    }
}