
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* funcname; void* lineno; void* filename; void* constraint_name; void* datatype_name; void* column_name; void* table_name; void* schema_name; void* context; void* internalquery; void* internalpos; void* cursorpos; void* hint; void* detail; void* message; int sqlerrcode; void* elevel; int assoc_context; } ;
typedef int StringInfo ;
typedef TYPE_1__ ErrorData ;


 int CurrentMemoryContext ;
 void* DEBUG1 ;
 void* ERROR ;
 void* FATAL ;
 void* INFO ;
 void* LOG ;
 int MAKE_SQLSTATE (char const,char const,char const,char const,char const) ;
 int MemSet (TYPE_1__*,int ,int) ;
 void* NOTICE ;
 void* PANIC ;
 void* WARNING ;
 int elog (void*,char*,...) ;
 void* pg_strtoint32 (char const*) ;
 char pq_getmsgbyte (int ) ;
 int pq_getmsgend (int ) ;
 char* pq_getmsgrawstring (int ) ;
 void* pstrdup (char const*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;

void
pq_parse_errornotice(StringInfo msg, ErrorData *edata)
{

 MemSet(edata, 0, sizeof(ErrorData));
 edata->elevel = ERROR;
 edata->assoc_context = CurrentMemoryContext;


 for (;;)
 {
  char code = pq_getmsgbyte(msg);
  const char *value;

  if (code == '\0')
  {
   pq_getmsgend(msg);
   break;
  }
  value = pq_getmsgrawstring(msg);

  switch (code)
  {
   case 135:

    break;
   case 134:
    if (strcmp(value, "DEBUG") == 0)
    {





     edata->elevel = DEBUG1;
    }
    else if (strcmp(value, "LOG") == 0)
    {




     edata->elevel = LOG;
    }
    else if (strcmp(value, "INFO") == 0)
     edata->elevel = INFO;
    else if (strcmp(value, "NOTICE") == 0)
     edata->elevel = NOTICE;
    else if (strcmp(value, "WARNING") == 0)
     edata->elevel = WARNING;
    else if (strcmp(value, "ERROR") == 0)
     edata->elevel = ERROR;
    else if (strcmp(value, "FATAL") == 0)
     edata->elevel = FATAL;
    else if (strcmp(value, "PANIC") == 0)
     edata->elevel = PANIC;
    else
     elog(ERROR, "unrecognized error severity: \"%s\"", value);
    break;
   case 130:
    if (strlen(value) != 5)
     elog(ERROR, "invalid SQLSTATE: \"%s\"", value);
    edata->sqlerrcode = MAKE_SQLSTATE(value[0], value[1], value[2],
              value[3], value[4]);
    break;
   case 137:
    edata->message = pstrdup(value);
    break;
   case 139:
    edata->detail = pstrdup(value);
    break;
   case 138:
    edata->hint = pstrdup(value);
    break;
   case 129:
    edata->cursorpos = pg_strtoint32(value);
    break;
   case 141:
    edata->internalpos = pg_strtoint32(value);
    break;
   case 140:
    edata->internalquery = pstrdup(value);
    break;
   case 143:
    edata->context = pstrdup(value);
    break;
   case 136:
    edata->schema_name = pstrdup(value);
    break;
   case 128:
    edata->table_name = pstrdup(value);
    break;
   case 145:
    edata->column_name = pstrdup(value);
    break;
   case 142:
    edata->datatype_name = pstrdup(value);
    break;
   case 144:
    edata->constraint_name = pstrdup(value);
    break;
   case 133:
    edata->filename = pstrdup(value);
    break;
   case 131:
    edata->lineno = pg_strtoint32(value);
    break;
   case 132:
    edata->funcname = pstrdup(value);
    break;
   default:
    elog(ERROR, "unrecognized error field code: %d", (int) code);
    break;
  }
 }
}
