
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int atomic; int internal_xact; int * procCxt; int savedcxt; int * execCxt; scalar_t__ outer_result; int * outer_tuptable; scalar_t__ outer_processed; int * queryEnv; int connectSubid; int tuptables; int execSubid; int * tuptable; scalar_t__ processed; } ;
typedef TYPE_1__ _SPI_connection ;


 int ALLOCSET_DEFAULT_SIZES ;
 void* AllocSetContextCreate (int *,char*,int ) ;
 int Assert (int) ;
 int ERROR ;
 int GetCurrentSubTransactionId () ;
 int InvalidSubTransactionId ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MemoryContextSwitchTo (int *) ;
 int * PortalContext ;
 int SPI_OK_CONNECT ;
 int SPI_OPT_NONATOMIC ;
 scalar_t__ SPI_processed ;
 scalar_t__ SPI_result ;
 int * SPI_tuptable ;
 int TopMemoryContext ;
 int * TopTransactionContext ;
 int _SPI_connected ;
 TYPE_1__* _SPI_current ;
 TYPE_1__* _SPI_stack ;
 int _SPI_stack_depth ;
 int elog (int ,char*) ;
 scalar_t__ repalloc (TYPE_1__*,int) ;
 int slist_init (int *) ;

int
SPI_connect_ext(int options)
{
 int newdepth;


 if (_SPI_stack == ((void*)0))
 {
  if (_SPI_connected != -1 || _SPI_stack_depth != 0)
   elog(ERROR, "SPI stack corrupted");
  newdepth = 16;
  _SPI_stack = (_SPI_connection *)
   MemoryContextAlloc(TopMemoryContext,
          newdepth * sizeof(_SPI_connection));
  _SPI_stack_depth = newdepth;
 }
 else
 {
  if (_SPI_stack_depth <= 0 || _SPI_stack_depth <= _SPI_connected)
   elog(ERROR, "SPI stack corrupted");
  if (_SPI_stack_depth == _SPI_connected + 1)
  {
   newdepth = _SPI_stack_depth * 2;
   _SPI_stack = (_SPI_connection *)
    repalloc(_SPI_stack,
       newdepth * sizeof(_SPI_connection));
   _SPI_stack_depth = newdepth;
  }
 }


 _SPI_connected++;
 Assert(_SPI_connected >= 0 && _SPI_connected < _SPI_stack_depth);

 _SPI_current = &(_SPI_stack[_SPI_connected]);
 _SPI_current->processed = 0;
 _SPI_current->tuptable = ((void*)0);
 _SPI_current->execSubid = InvalidSubTransactionId;
 slist_init(&_SPI_current->tuptables);
 _SPI_current->procCxt = ((void*)0);
 _SPI_current->execCxt = ((void*)0);
 _SPI_current->connectSubid = GetCurrentSubTransactionId();
 _SPI_current->queryEnv = ((void*)0);
 _SPI_current->atomic = (options & SPI_OPT_NONATOMIC ? 0 : 1);
 _SPI_current->internal_xact = 0;
 _SPI_current->outer_processed = SPI_processed;
 _SPI_current->outer_tuptable = SPI_tuptable;
 _SPI_current->outer_result = SPI_result;
 _SPI_current->procCxt = AllocSetContextCreate(_SPI_current->atomic ? TopTransactionContext : PortalContext,
              "SPI Proc",
              ALLOCSET_DEFAULT_SIZES);
 _SPI_current->execCxt = AllocSetContextCreate(_SPI_current->atomic ? TopTransactionContext : _SPI_current->procCxt,
              "SPI Exec",
              ALLOCSET_DEFAULT_SIZES);

 _SPI_current->savedcxt = MemoryContextSwitchTo(_SPI_current->procCxt);





 SPI_processed = 0;
 SPI_tuptable = ((void*)0);
 SPI_result = 0;

 return SPI_OK_CONNECT;
}
