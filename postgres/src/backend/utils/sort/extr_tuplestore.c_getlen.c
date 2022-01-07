
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int len ;
struct TYPE_3__ {int myfile; } ;
typedef TYPE_1__ Tuplestorestate ;


 size_t BufFileRead (int ,void*,int) ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;

__attribute__((used)) static unsigned int
getlen(Tuplestorestate *state, bool eofOK)
{
 unsigned int len;
 size_t nbytes;

 nbytes = BufFileRead(state->myfile, (void *) &len, sizeof(len));
 if (nbytes == sizeof(len))
  return len;
 if (nbytes != 0 || !eofOK)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not read from tuplestore temporary file: %m")));
 return 0;
}
