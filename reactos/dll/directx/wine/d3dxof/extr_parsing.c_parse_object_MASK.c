#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t level; TYPE_3__* pxo; int /*<<< orphan*/ * value; TYPE_2__* pdxf; TYPE_1__** pxt; int /*<<< orphan*/  pxo_tab; int /*<<< orphan*/  cur_pos_data; } ;
typedef  TYPE_4__ parse_buffer ;
typedef  size_t ULONG ;
struct TYPE_11__ {int /*<<< orphan*/  class_id; scalar_t__* name; int /*<<< orphan*/  type; int /*<<< orphan*/  root; int /*<<< orphan*/  binary; int /*<<< orphan*/ * ptarget; int /*<<< orphan*/  pos_data; } ;
struct TYPE_10__ {size_t nb_xtemplates; TYPE_1__* xtemplates; } ;
struct TYPE_9__ {int /*<<< orphan*/  class_id; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ TOKEN_CBRACE ; 
 scalar_t__ TOKEN_GUID ; 
 scalar_t__ TOKEN_NAME ; 
 scalar_t__ TOKEN_OBRACE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,char*) ; 

BOOL FUNC8(parse_buffer * buf)
{
  ULONG i;

  buf->pxo->pos_data = buf->cur_pos_data;
  buf->pxo->ptarget = NULL;
  buf->pxo->binary = FALSE;
  buf->pxo->root = buf->pxo_tab;

  if (FUNC3(buf) != TOKEN_NAME)
    return FALSE;

  /* To do template lookup */
  for (i = 0; i < buf->pdxf->nb_xtemplates; i++)
  {
    if (!FUNC1((char*)buf->value, buf->pdxf->xtemplates[i].name, -1))
    {
      buf->pxt[buf->level] = &buf->pdxf->xtemplates[i];
      FUNC4(&buf->pxo->type, &buf->pdxf->xtemplates[i].class_id, 16);
      break;
    }
  }
  if (i == buf->pdxf->nb_xtemplates)
  {
    FUNC0("Unknown template %s\n", (char*)buf->value);
    return FALSE;
  }

  if (FUNC2(buf) == TOKEN_NAME)
  {
    FUNC3(buf);
    FUNC7(buf->pxo->name, (char*)buf->value);
  }
  else
    buf->pxo->name[0] = 0;

  if (FUNC3(buf) != TOKEN_OBRACE)
    return FALSE;
  if (FUNC2(buf) == TOKEN_GUID)
  {
    FUNC3(buf);
    FUNC4(&buf->pxo->class_id, buf->value, 16);
  }
  else
    FUNC5(&buf->pxo->class_id, 0, 16);

  if (!FUNC6(buf, TRUE))
    return FALSE;
  if (FUNC3(buf) != TOKEN_CBRACE)
    return FALSE;

  /* For seeking to a possibly eof to avoid parsing another object next time */
  FUNC2(buf);

  return TRUE;
}