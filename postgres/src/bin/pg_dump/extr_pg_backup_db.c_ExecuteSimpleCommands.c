
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ len; int data; } ;
struct TYPE_10__ {int state; int backSlash; TYPE_4__* curCmd; } ;
struct TYPE_9__ {int std_strings; } ;
struct TYPE_11__ {TYPE_2__ sqlparse; TYPE_1__ public; } ;
typedef TYPE_3__ ArchiveHandle ;


 int ExecuteSqlCommand (TYPE_3__*,int ,char*) ;



 int appendPQExpBufferChar (TYPE_4__*,char) ;
 TYPE_4__* createPQExpBuffer () ;
 int resetPQExpBuffer (TYPE_4__*) ;

__attribute__((used)) static void
ExecuteSimpleCommands(ArchiveHandle *AH, const char *buf, size_t bufLen)
{
 const char *qry = buf;
 const char *eos = buf + bufLen;


 if (AH->sqlparse.curCmd == ((void*)0))
  AH->sqlparse.curCmd = createPQExpBuffer();

 for (; qry < eos; qry++)
 {
  char ch = *qry;


  if (!(ch == '\n' && AH->sqlparse.curCmd->len == 0))
   appendPQExpBufferChar(AH->sqlparse.curCmd, ch);

  switch (AH->sqlparse.state)
  {
   case 128:
    if (ch == ';')
    {




     ExecuteSqlCommand(AH, AH->sqlparse.curCmd->data,
           "could not execute query");
     resetPQExpBuffer(AH->sqlparse.curCmd);
    }
    else if (ch == '\'')
    {
     AH->sqlparse.state = 129;
     AH->sqlparse.backSlash = 0;
    }
    else if (ch == '"')
    {
     AH->sqlparse.state = 130;
    }
    break;

   case 129:

    if (ch == '\'' && !AH->sqlparse.backSlash)
     AH->sqlparse.state = 128;
    else if (ch == '\\' && !AH->public.std_strings)
     AH->sqlparse.backSlash = !AH->sqlparse.backSlash;
    else
     AH->sqlparse.backSlash = 0;
    break;

   case 130:

    if (ch == '"')
     AH->sqlparse.state = 128;
    break;
  }
 }
}
