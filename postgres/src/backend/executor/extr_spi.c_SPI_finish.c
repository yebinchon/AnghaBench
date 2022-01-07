
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outer_result; int outer_tuptable; int outer_processed; int * procCxt; int * execCxt; int savedcxt; } ;


 int MemoryContextDelete (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int SPI_OK_FINISH ;
 int SPI_processed ;
 int SPI_result ;
 int SPI_tuptable ;
 int _SPI_begin_call (int) ;
 size_t _SPI_connected ;
 TYPE_1__* _SPI_current ;
 TYPE_1__* _SPI_stack ;

int
SPI_finish(void)
{
 int res;

 res = _SPI_begin_call(0);
 if (res < 0)
  return res;


 MemoryContextSwitchTo(_SPI_current->savedcxt);


 MemoryContextDelete(_SPI_current->execCxt);
 _SPI_current->execCxt = ((void*)0);
 MemoryContextDelete(_SPI_current->procCxt);
 _SPI_current->procCxt = ((void*)0);





 SPI_processed = _SPI_current->outer_processed;
 SPI_tuptable = _SPI_current->outer_tuptable;
 SPI_result = _SPI_current->outer_result;


 _SPI_connected--;
 if (_SPI_connected < 0)
  _SPI_current = ((void*)0);
 else
  _SPI_current = &(_SPI_stack[_SPI_connected]);

 return SPI_OK_FINISH;
}
