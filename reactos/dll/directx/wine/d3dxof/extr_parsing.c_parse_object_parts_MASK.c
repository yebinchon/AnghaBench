#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t nb_children; TYPE_2__* root; struct TYPE_12__** children; scalar_t__ binary; TYPE_1__* ptarget; scalar_t__ pos_data; scalar_t__ size; } ;
typedef  TYPE_3__ xobject ;
struct TYPE_13__ {int nb_pxo_globals; TYPE_3__* pxo; int /*<<< orphan*/  level; scalar_t__ value; TYPE_3__* pxo_tab; TYPE_1__** pxo_globals; scalar_t__ cur_pos_data; } ;
typedef  TYPE_4__ parse_buffer ;
typedef  int ULONG ;
struct TYPE_11__ {scalar_t__ nb_subobjects; } ;
struct TYPE_10__ {int nb_subobjects; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t MAX_CHILDREN ; 
 scalar_t__ MAX_SUBOBJECTS ; 
 scalar_t__ TOKEN_CBRACE ; 
 scalar_t__ TOKEN_NAME ; 
 scalar_t__ TOKEN_OBRACE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static BOOL FUNC8(parse_buffer * buf, BOOL allow_optional)
{
  buf->pxo->nb_children = 0;

  if (!FUNC6(buf))
    return FALSE;

  if (allow_optional)
  {
    buf->pxo->size = buf->cur_pos_data - buf->pxo->pos_data;

    while (1)
    {
      if (FUNC3(buf) == TOKEN_OBRACE)
      {
        ULONG i, j;
        FUNC4(buf);
        if (FUNC4(buf) != TOKEN_NAME)
          return FALSE;
        if (FUNC4(buf) != TOKEN_CBRACE)
          return FALSE;
        FUNC2("Found optional reference %s\n", (char*)buf->value);
        for (i = 0; i < (buf->nb_pxo_globals+1); i++)
        {
          for (j = 0; j < (buf->pxo_globals[i])[0].nb_subobjects; j++)
          {
            if (!FUNC7((buf->pxo_globals[i])[j].name, (char*)buf->value))
              goto _exit;
          }
        }
_exit:
        if (i == (buf->nb_pxo_globals+1))
        {
          FUNC0("Reference to unknown object %s\n", (char*)buf->value);
          return FALSE;
        }

        if (buf->pxo->root->nb_subobjects >= MAX_SUBOBJECTS)
        {
            FUNC1("Too many sub-objects\n");
            return FALSE;
        }

        buf->pxo->children[buf->pxo->nb_children] = &buf->pxo_tab[buf->pxo->root->nb_subobjects++];
        buf->pxo->children[buf->pxo->nb_children]->ptarget = &(buf->pxo_globals[i])[j];
        buf->pxo->children[buf->pxo->nb_children]->binary = FALSE;
        buf->pxo->nb_children++;
      }
      else if (FUNC3(buf) == TOKEN_NAME)
      {
        xobject* pxo = buf->pxo;

        if (buf->pxo->root->nb_subobjects >= MAX_SUBOBJECTS)
        {
            FUNC1("Too many sub-objects\n");
            return FALSE;
        }

        buf->pxo = buf->pxo->children[buf->pxo->nb_children] = &buf->pxo_tab[buf->pxo->root->nb_subobjects];
        pxo->root->nb_subobjects++;

        FUNC2("Enter optional %s\n", (char*)buf->value);
        buf->level++;
        if (!FUNC5(buf))
        {
          buf->level--;
          return FALSE;
        }
        buf->level--;
        buf->pxo = pxo;
        buf->pxo->nb_children++;
      }
      else
        break;
    }
  }

  if (buf->pxo->nb_children > MAX_CHILDREN)
  {
    FUNC1("Too many children %d\n", buf->pxo->nb_children);
    return FALSE;
  }

  return TRUE;
}