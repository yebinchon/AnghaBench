
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int rawScalar; } ;
struct TYPE_15__ {TYPE_1__ array; } ;
struct TYPE_17__ {TYPE_2__ val; } ;
struct TYPE_16__ {char* data; } ;
typedef TYPE_3__* StringInfo ;
typedef TYPE_4__ JsonbValue ;
typedef int JsonbIteratorToken ;
typedef int JsonbIterator ;
typedef int JsonbContainer ;


 int Assert (int) ;
 int ERROR ;
 int * JsonbIteratorInit (int *) ;
 int JsonbIteratorNext (int **,TYPE_4__*,int) ;


 int WJB_DONE ;




 int WJB_VALUE ;
 int add_indent (TYPE_3__*,int,int) ;
 int appendBinaryStringInfo (TYPE_3__*,char*,int) ;
 int appendStringInfoCharMacro (TYPE_3__*,char) ;
 int elog (int ,char*) ;
 int enlargeStringInfo (TYPE_3__*,int) ;
 int jsonb_put_escaped_value (TYPE_3__*,TYPE_4__*) ;
 TYPE_3__* makeStringInfo () ;

__attribute__((used)) static char *
JsonbToCStringWorker(StringInfo out, JsonbContainer *in, int estimated_len, bool indent)
{
 bool first = 1;
 JsonbIterator *it;
 JsonbValue v;
 JsonbIteratorToken type = WJB_DONE;
 int level = 0;
 bool redo_switch = 0;


 int ispaces = indent ? 1 : 2;





 bool use_indent = 0;
 bool raw_scalar = 0;
 bool last_was_key = 0;

 if (out == ((void*)0))
  out = makeStringInfo();

 enlargeStringInfo(out, (estimated_len >= 0) ? estimated_len : 64);

 it = JsonbIteratorInit(in);

 while (redo_switch ||
     ((type = JsonbIteratorNext(&it, &v, 0)) != WJB_DONE))
 {
  redo_switch = 0;
  switch (type)
  {
   case 133:
    if (!first)
     appendBinaryStringInfo(out, ", ", ispaces);

    if (!v.val.array.rawScalar)
    {
     add_indent(out, use_indent && !last_was_key, level);
     appendStringInfoCharMacro(out, '[');
    }
    else
     raw_scalar = 1;

    first = 1;
    level++;
    break;
   case 132:
    if (!first)
     appendBinaryStringInfo(out, ", ", ispaces);

    add_indent(out, use_indent && !last_was_key, level);
    appendStringInfoCharMacro(out, '{');

    first = 1;
    level++;
    break;
   case 128:
    if (!first)
     appendBinaryStringInfo(out, ", ", ispaces);
    first = 1;

    add_indent(out, use_indent, level);


    jsonb_put_escaped_value(out, &v);
    appendBinaryStringInfo(out, ": ", 2);

    type = JsonbIteratorNext(&it, &v, 0);
    if (type == WJB_VALUE)
    {
     first = 0;
     jsonb_put_escaped_value(out, &v);
    }
    else
    {
     Assert(type == 132 || type == 133);






     redo_switch = 1;
    }
    break;
   case 131:
    if (!first)
     appendBinaryStringInfo(out, ", ", ispaces);
    first = 0;

    if (!raw_scalar)
     add_indent(out, use_indent, level);
    jsonb_put_escaped_value(out, &v);
    break;
   case 130:
    level--;
    if (!raw_scalar)
    {
     add_indent(out, use_indent, level);
     appendStringInfoCharMacro(out, ']');
    }
    first = 0;
    break;
   case 129:
    level--;
    add_indent(out, use_indent, level);
    appendStringInfoCharMacro(out, '}');
    first = 0;
    break;
   default:
    elog(ERROR, "unknown jsonb iterator token type");
  }
  use_indent = indent;
  last_was_key = redo_switch;
 }

 Assert(level == 0);

 return out->data;
}
