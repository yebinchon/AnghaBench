
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int locktag_field1; scalar_t__ locktag_type; int locktag_field4; int locktag_field3; int locktag_field2; } ;
typedef int StringInfo ;
typedef int LockTagType ;
typedef TYPE_1__ LOCKTAG ;
 int _ (char*) ;
 int appendStringInfo (int ,int ,int,...) ;

void
DescribeLockTag(StringInfo buf, const LOCKTAG *tag)
{
 switch ((LockTagType) tag->locktag_type)
 {
  case 134:
   appendStringInfo(buf,
        _("relation %u of database %u"),
        tag->locktag_field2,
        tag->locktag_field1);
   break;
  case 133:
   appendStringInfo(buf,
        _("extension of relation %u of database %u"),
        tag->locktag_field2,
        tag->locktag_field1);
   break;
  case 135:
   appendStringInfo(buf,
        _("page %u of relation %u of database %u"),
        tag->locktag_field3,
        tag->locktag_field2,
        tag->locktag_field1);
   break;
  case 130:
   appendStringInfo(buf,
        _("tuple (%u,%u) of relation %u of database %u"),
        tag->locktag_field3,
        tag->locktag_field4,
        tag->locktag_field2,
        tag->locktag_field1);
   break;
  case 131:
   appendStringInfo(buf,
        _("transaction %u"),
        tag->locktag_field1);
   break;
  case 128:
   appendStringInfo(buf,
        _("virtual transaction %d/%u"),
        tag->locktag_field1,
        tag->locktag_field2);
   break;
  case 132:
   appendStringInfo(buf,
        _("speculative token %u of transaction %u"),
        tag->locktag_field2,
        tag->locktag_field1);
   break;
  case 136:
   appendStringInfo(buf,
        _("object %u of class %u of database %u"),
        tag->locktag_field3,
        tag->locktag_field2,
        tag->locktag_field1);
   break;
  case 129:

   appendStringInfo(buf,
        _("user lock [%u,%u,%u]"),
        tag->locktag_field1,
        tag->locktag_field2,
        tag->locktag_field3);
   break;
  case 137:
   appendStringInfo(buf,
        _("advisory lock [%u,%u,%u,%u]"),
        tag->locktag_field1,
        tag->locktag_field2,
        tag->locktag_field3,
        tag->locktag_field4);
   break;
  default:
   appendStringInfo(buf,
        _("unrecognized locktag type %d"),
        (int) tag->locktag_type);
   break;
 }
}
