
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int maxlen; char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef scalar_t__ Size ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int EXIT_FAILURE ;
 scalar_t__ MaxAllocSize ;
 char* _ (char*) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int,int) ;
 int errmsg (char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,int,...) ;
 scalar_t__ repalloc (char*,int) ;
 int stderr ;

void
enlargeStringInfo(StringInfo str, int needed)
{
 int newlen;





 if (needed < 0)
 {

  elog(ERROR, "invalid string enlargement request size: %d", needed);




 }
 if (((Size) needed) >= (MaxAllocSize - (Size) str->len))
 {

  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("out of memory"),
     errdetail("Cannot enlarge string buffer containing %d bytes by %d more bytes.",
         str->len, needed)));






 }

 needed += str->len + 1;



 if (needed <= str->maxlen)
  return;






 newlen = 2 * str->maxlen;
 while (needed > newlen)
  newlen = 2 * newlen;






 if (newlen > (int) MaxAllocSize)
  newlen = (int) MaxAllocSize;

 str->data = (char *) repalloc(str->data, newlen);

 str->maxlen = newlen;
}
