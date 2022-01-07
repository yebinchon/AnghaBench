
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tuplesortstate ;
typedef int SortTuple ;


 int ERROR ;
 int elog (int ,char*) ;

__attribute__((used)) static void
copytup_datum(Tuplesortstate *state, SortTuple *stup, void *tup)
{

 elog(ERROR, "copytup_datum() should not be called");
}
