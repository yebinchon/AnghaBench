
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* changed; char** values; } ;
typedef int StringInfo ;
typedef TYPE_1__ LogicalRepTupleData ;


 int ERROR ;
 int elog (int ,char*,char) ;
 int memset (int*,int ,int) ;
 char* palloc (int) ;
 int pq_copymsgbytes (int ,char*,int) ;
 char pq_getmsgbyte (int ) ;
 int pq_getmsgint (int ,int) ;

__attribute__((used)) static void
logicalrep_read_tuple(StringInfo in, LogicalRepTupleData *tuple)
{
 int i;
 int natts;


 natts = pq_getmsgint(in, 2);

 memset(tuple->changed, 0, sizeof(tuple->changed));


 for (i = 0; i < natts; i++)
 {
  char kind;

  kind = pq_getmsgbyte(in);

  switch (kind)
  {
   case 'n':
    tuple->values[i] = ((void*)0);
    tuple->changed[i] = 1;
    break;
   case 'u':

    tuple->values[i] = ((void*)0);
    break;
   case 't':
    {
     int len;

     tuple->changed[i] = 1;

     len = pq_getmsgint(in, 4);


     tuple->values[i] = palloc(len + 1);
     pq_copymsgbytes(in, tuple->values[i], len);
     tuple->values[i][len] = '\0';
    }
    break;
   default:
    elog(ERROR, "unrecognized data representation type '%c'", kind);
  }
 }
}
