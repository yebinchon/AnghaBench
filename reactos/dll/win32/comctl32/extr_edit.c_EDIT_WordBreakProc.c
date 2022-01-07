
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int fWhiteSpace; int fSoftBreak; } ;
struct TYPE_10__ {TYPE_4__* logAttr; int text; } ;
struct TYPE_9__ {int eScript; } ;
typedef int SCRIPT_LOGATTR ;
typedef TYPE_1__ SCRIPT_ANALYSIS ;
typedef int * LPWSTR ;
typedef int INT ;
typedef TYPE_2__ EDITSTATE ;


 int ERR (char*) ;
 int SCRIPT_UNDEFINED ;
 int ScriptBreak (int ,int,TYPE_1__*,TYPE_4__*) ;
 int TRACE (char*,int *,int,int,int) ;



 int get_text_length (TYPE_2__*) ;
 TYPE_4__* heap_alloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static INT EDIT_WordBreakProc(EDITSTATE *es, LPWSTR s, INT index, INT count, INT action)
{
    INT ret = 0;

    TRACE("s=%p, index=%d, count=%d, action=%d\n", s, index, count, action);

    if(!s) return 0;

    if (!es->logAttr)
    {
        SCRIPT_ANALYSIS psa;

        memset(&psa,0,sizeof(SCRIPT_ANALYSIS));
        psa.eScript = SCRIPT_UNDEFINED;

        es->logAttr = heap_alloc(sizeof(SCRIPT_LOGATTR) * get_text_length(es));
        ScriptBreak(es->text, get_text_length(es), &psa, es->logAttr);
    }

    switch (action) {
    case 129:
        if (index)
            index--;
        while (index && !es->logAttr[index].fSoftBreak)
            index--;
        ret = index;
        break;
    case 128:
        if (!count)
            break;
        while (index < count && s[index] && !es->logAttr[index].fSoftBreak)
            index++;
        ret = index;
        break;
    case 130:
        ret = es->logAttr[index].fWhiteSpace;
        break;
    default:
        ERR("unknown action code, please report !\n");
        break;
    }
    return ret;
}
