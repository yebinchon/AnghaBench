
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tuplen ;
struct TYPE_6__ {int myfile; scalar_t__ backward; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_7__ {unsigned int t_len; } ;
typedef TYPE_2__* MinimalTuple ;


 int BufFileRead (int ,void*,int) ;
 int ERROR ;
 int GetMemoryChunkSpace (TYPE_2__*) ;
 unsigned int MINIMAL_TUPLE_DATA_OFFSET ;
 int USEMEM (TYPE_1__*,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;
 int palloc (unsigned int) ;

__attribute__((used)) static void *
readtup_heap(Tuplestorestate *state, unsigned int len)
{
 unsigned int tupbodylen = len - sizeof(int);
 unsigned int tuplen = tupbodylen + MINIMAL_TUPLE_DATA_OFFSET;
 MinimalTuple tuple = (MinimalTuple) palloc(tuplen);
 char *tupbody = (char *) tuple + MINIMAL_TUPLE_DATA_OFFSET;

 USEMEM(state, GetMemoryChunkSpace(tuple));

 tuple->t_len = tuplen;
 if (BufFileRead(state->myfile, (void *) tupbody,
     tupbodylen) != (size_t) tupbodylen)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not read from tuplestore temporary file: %m")));
 if (state->backward)
  if (BufFileRead(state->myfile, (void *) &tuplen,
      sizeof(tuplen)) != sizeof(tuplen))
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not read from tuplestore temporary file: %m")));
 return (void *) tuple;
}
