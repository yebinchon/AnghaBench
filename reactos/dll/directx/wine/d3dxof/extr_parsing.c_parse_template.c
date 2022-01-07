
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* pdxf; scalar_t__ value; } ;
typedef TYPE_3__ parse_buffer ;
struct TYPE_8__ {size_t nb_xtemplates; TYPE_1__* xtemplates; } ;
struct TYPE_7__ {int class_id; int name; } ;
typedef int GUID ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ TOKEN_CBRACE ;
 scalar_t__ TOKEN_GUID ;
 scalar_t__ TOKEN_NAME ;
 scalar_t__ TOKEN_OBRACE ;
 scalar_t__ TOKEN_TEMPLATE ;
 int TRACE (char*,size_t,int ,int ) ;
 int TRUE ;
 int debugstr_guid (int *) ;
 scalar_t__ get_TOKEN (TYPE_3__*) ;
 int parse_template_parts (TYPE_3__*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static BOOL parse_template(parse_buffer * buf)
{
  if (get_TOKEN(buf) != TOKEN_TEMPLATE)
    return FALSE;
  if (get_TOKEN(buf) != TOKEN_NAME)
    return FALSE;
  strcpy(buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates].name, (char*)buf->value);
  if (get_TOKEN(buf) != TOKEN_OBRACE)
    return FALSE;
  if (get_TOKEN(buf) != TOKEN_GUID)
    return FALSE;
  buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates].class_id = *(GUID*)buf->value;
  if (!parse_template_parts(buf))
    return FALSE;
  if (get_TOKEN(buf) != TOKEN_CBRACE)
    return FALSE;

  TRACE("%d - %s - %s\n", buf->pdxf->nb_xtemplates, buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates].name, debugstr_guid(&buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates].class_id));
  buf->pdxf->nb_xtemplates++;

  return TRUE;
}
