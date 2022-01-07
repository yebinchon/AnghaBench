
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oper; int rel; int ctid; } ;
typedef TYPE_1__ XactLockTableWaitInfo ;


 int ItemPointerGetBlockNumber (int ) ;
 int ItemPointerGetOffsetNumber (int ) ;
 scalar_t__ ItemPointerIsValid (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationIsValid (int ) ;






 int XLTW_None ;


 int errcontext (char const*,int ,int ,int ) ;
 char* gettext_noop (char*) ;

__attribute__((used)) static void
XactLockTableWaitErrorCb(void *arg)
{
 XactLockTableWaitInfo *info = (XactLockTableWaitInfo *) arg;





 if (info->oper != XLTW_None &&
  ItemPointerIsValid(info->ctid) && RelationIsValid(info->rel))
 {
  const char *cxt;

  switch (info->oper)
  {
   case 128:
    cxt = gettext_noop("while updating tuple (%u,%u) in relation \"%s\"");
    break;
   case 135:
    cxt = gettext_noop("while deleting tuple (%u,%u) in relation \"%s\"");
    break;
   case 131:
    cxt = gettext_noop("while locking tuple (%u,%u) in relation \"%s\"");
    break;
   case 130:
    cxt = gettext_noop("while locking updated version (%u,%u) of tuple in relation \"%s\"");
    break;
   case 133:
    cxt = gettext_noop("while inserting index tuple (%u,%u) in relation \"%s\"");
    break;
   case 132:
    cxt = gettext_noop("while checking uniqueness of tuple (%u,%u) in relation \"%s\"");
    break;
   case 134:
    cxt = gettext_noop("while rechecking updated tuple (%u,%u) in relation \"%s\"");
    break;
   case 129:
    cxt = gettext_noop("while checking exclusion constraint on tuple (%u,%u) in relation \"%s\"");
    break;

   default:
    return;
  }

  errcontext(cxt,
       ItemPointerGetBlockNumber(info->ctid),
       ItemPointerGetOffsetNumber(info->ctid),
       RelationGetRelationName(info->rel));
 }
}
