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
struct TYPE_7__ {TYPE_1__* pdxf; } ;
typedef  TYPE_2__ parse_buffer ;
struct TYPE_6__ {int nb_xtemplates; int /*<<< orphan*/ * xtemplates; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TOKEN_NONE ; 
 scalar_t__ TOKEN_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  d3dxof_parsing ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

BOOL FUNC6(parse_buffer * buf, BOOL templates_only)
{
  while (FUNC3(buf) != TOKEN_NONE)
  {
    if (templates_only && (FUNC3(buf) != TOKEN_TEMPLATE))
      return TRUE;
    if (!FUNC5(buf))
    {
      FUNC2("Template is not correct\n");
      return FALSE;
    }
    else
    {
      FUNC0("Template successfully parsed:\n");
      if (FUNC1(d3dxof_parsing))
        FUNC4(buf->pdxf->xtemplates, &buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates - 1]);
    }
  }
  return TRUE;
}