
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {size_t level; TYPE_3__* pxo; int * value; TYPE_2__* pdxf; TYPE_1__** pxt; int pxo_tab; int cur_pos_data; } ;
typedef TYPE_4__ parse_buffer ;
typedef size_t ULONG ;
struct TYPE_11__ {int class_id; scalar_t__* name; int type; int root; int binary; int * ptarget; int pos_data; } ;
struct TYPE_10__ {size_t nb_xtemplates; TYPE_1__* xtemplates; } ;
struct TYPE_9__ {int class_id; int name; } ;
typedef int BOOL ;


 int ERR (char*,char*) ;
 int FALSE ;
 scalar_t__ TOKEN_CBRACE ;
 scalar_t__ TOKEN_GUID ;
 scalar_t__ TOKEN_NAME ;
 scalar_t__ TOKEN_OBRACE ;
 int TRUE ;
 int _strnicmp (char*,int ,int) ;
 scalar_t__ check_TOKEN (TYPE_4__*) ;
 scalar_t__ get_TOKEN (TYPE_4__*) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int parse_object_parts (TYPE_4__*,int ) ;
 int strcpy (scalar_t__*,char*) ;

BOOL parse_object(parse_buffer * buf)
{
  ULONG i;

  buf->pxo->pos_data = buf->cur_pos_data;
  buf->pxo->ptarget = ((void*)0);
  buf->pxo->binary = FALSE;
  buf->pxo->root = buf->pxo_tab;

  if (get_TOKEN(buf) != TOKEN_NAME)
    return FALSE;


  for (i = 0; i < buf->pdxf->nb_xtemplates; i++)
  {
    if (!_strnicmp((char*)buf->value, buf->pdxf->xtemplates[i].name, -1))
    {
      buf->pxt[buf->level] = &buf->pdxf->xtemplates[i];
      memcpy(&buf->pxo->type, &buf->pdxf->xtemplates[i].class_id, 16);
      break;
    }
  }
  if (i == buf->pdxf->nb_xtemplates)
  {
    ERR("Unknown template %s\n", (char*)buf->value);
    return FALSE;
  }

  if (check_TOKEN(buf) == TOKEN_NAME)
  {
    get_TOKEN(buf);
    strcpy(buf->pxo->name, (char*)buf->value);
  }
  else
    buf->pxo->name[0] = 0;

  if (get_TOKEN(buf) != TOKEN_OBRACE)
    return FALSE;
  if (check_TOKEN(buf) == TOKEN_GUID)
  {
    get_TOKEN(buf);
    memcpy(&buf->pxo->class_id, buf->value, 16);
  }
  else
    memset(&buf->pxo->class_id, 0, 16);

  if (!parse_object_parts(buf, TRUE))
    return FALSE;
  if (get_TOKEN(buf) != TOKEN_CBRACE)
    return FALSE;


  check_TOKEN(buf);

  return TRUE;
}
