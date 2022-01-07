
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int line ;
struct TYPE_6__ {int len; char* data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int FILE ;


 scalar_t__ PQExpBufferBroken (TYPE_1__*) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 TYPE_1__* createPQExpBuffer () ;
 scalar_t__ ferror (int *) ;
 char* fgets (char*,int,int *) ;
 int pg_log_error (char*) ;
 char* pg_strdup (char*) ;
 int resetPQExpBuffer (TYPE_1__*) ;
 int sigint_interrupt_enabled ;

char *
gets_fromFile(FILE *source)
{
 static PQExpBuffer buffer = ((void*)0);

 char line[1024];

 if (buffer == ((void*)0))
  buffer = createPQExpBuffer();
 else
  resetPQExpBuffer(buffer);

 for (;;)
 {
  char *result;


  sigint_interrupt_enabled = 1;


  result = fgets(line, sizeof(line), source);


  sigint_interrupt_enabled = 0;


  if (result == ((void*)0))
  {
   if (ferror(source))
   {
    pg_log_error("could not read from input file: %m");
    return ((void*)0);
   }
   break;
  }

  appendPQExpBufferStr(buffer, line);

  if (PQExpBufferBroken(buffer))
  {
   pg_log_error("out of memory");
   return ((void*)0);
  }


  if (buffer->len > 0 && buffer->data[buffer->len - 1] == '\n')
  {
   buffer->data[buffer->len - 1] = '\0';
   return pg_strdup(buffer->data);
  }
 }

 if (buffer->len > 0)
  return pg_strdup(buffer->data);


 return ((void*)0);
}
