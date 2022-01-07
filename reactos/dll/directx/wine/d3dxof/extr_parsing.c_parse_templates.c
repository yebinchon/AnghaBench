
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pdxf; } ;
typedef TYPE_2__ parse_buffer ;
struct TYPE_6__ {int nb_xtemplates; int * xtemplates; } ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TOKEN_NONE ;
 scalar_t__ TOKEN_TEMPLATE ;
 int TRACE (char*) ;
 scalar_t__ TRACE_ON (int ) ;
 scalar_t__ TRUE ;
 int WARN (char*) ;
 scalar_t__ check_TOKEN (TYPE_2__*) ;
 int d3dxof_parsing ;
 int dump_template (int *,int *) ;
 int parse_template (TYPE_2__*) ;

BOOL parse_templates(parse_buffer * buf, BOOL templates_only)
{
  while (check_TOKEN(buf) != TOKEN_NONE)
  {
    if (templates_only && (check_TOKEN(buf) != TOKEN_TEMPLATE))
      return TRUE;
    if (!parse_template(buf))
    {
      WARN("Template is not correct\n");
      return FALSE;
    }
    else
    {
      TRACE("Template successfully parsed:\n");
      if (TRACE_ON(d3dxof_parsing))
        dump_template(buf->pdxf->xtemplates, &buf->pdxf->xtemplates[buf->pdxf->nb_xtemplates - 1]);
    }
  }
  return TRUE;
}
