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
struct TYPE_9__ {TYPE_2__* pdxf; scalar_t__ value; } ;
typedef  TYPE_3__ parse_buffer ;
struct TYPE_8__ {size_t nb_xtemplates; TYPE_1__* xtemplates; } ;
struct TYPE_7__ {int /*<<< orphan*/  class_id; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ TOKEN_CBRACE ; 
 scalar_t__ TOKEN_GUID ; 
 scalar_t__ TOKEN_NAME ; 
 scalar_t__ TOKEN_OBRACE ; 
 scalar_t__ TOKEN_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static BOOL FUNC5(parse_buffer * buf)
{
  if (FUNC2(buf) != TOKEN_TEMPLATE)
    return FALSE;
  if (FUNC2(buf) != TOKEN_NAME)
    return FALSE;
  FUNC4(buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates].name, (char*)buf->value);
  if (FUNC2(buf) != TOKEN_OBRACE)
    return FALSE;
  if (FUNC2(buf) != TOKEN_GUID)
    return FALSE;
  buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates].class_id = *(GUID*)buf->value;
  if (!FUNC3(buf))
    return FALSE;
  if (FUNC2(buf) != TOKEN_CBRACE)
    return FALSE;

  FUNC0("%d - %s - %s\n", buf->pdxf->nb_xtemplates, buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates].name, FUNC1(&buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates].class_id));
  buf->pdxf->nb_xtemplates++;

  return TRUE;
}