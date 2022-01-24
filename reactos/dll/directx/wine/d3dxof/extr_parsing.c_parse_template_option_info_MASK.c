#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t nb_children; void* open; int /*<<< orphan*/ * children; } ;
typedef  TYPE_2__ xtemplate ;
struct TYPE_9__ {scalar_t__ value; TYPE_1__* pdxf; } ;
typedef  TYPE_3__ parse_buffer ;
struct TYPE_7__ {size_t nb_xtemplates; TYPE_2__* xtemplates; } ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ TOKEN_COMMA ; 
 scalar_t__ TOKEN_DOT ; 
 scalar_t__ TOKEN_GUID ; 
 scalar_t__ TOKEN_NAME ; 
 void* TRUE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static BOOL FUNC3(parse_buffer * buf)
{
  xtemplate* cur_template = &buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates];

  if (FUNC0(buf) == TOKEN_DOT)
  {
    FUNC1(buf);
    if (FUNC1(buf) != TOKEN_DOT)
      return FALSE;
    if (FUNC1(buf) != TOKEN_DOT)
      return FALSE;
    cur_template->open = TRUE;
  }
  else
  {
    while (1)
    {
      if (FUNC1(buf) != TOKEN_NAME)
        return FALSE;
      FUNC2(cur_template->children[cur_template->nb_children], (char*)buf->value);
      if (FUNC0(buf) == TOKEN_GUID)
        FUNC1(buf);
      cur_template->nb_children++;
      if (FUNC0(buf) != TOKEN_COMMA)
        break;
      FUNC1(buf);
    }
    cur_template->open = FALSE;
  }

  return TRUE;
}