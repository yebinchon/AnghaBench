
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int currPos; } ;
struct TYPE_7__ {int opaque; } ;
typedef int ScanDirection ;
typedef TYPE_1__* IndexScanDesc ;
typedef int BlockNumber ;
typedef TYPE_2__* BTScanOpaque ;


 int _bt_drop_lock_and_maybe_pin (TYPE_1__*,int *) ;
 int _bt_initialize_more_data (TYPE_2__*,int ) ;
 int _bt_readnextpage (TYPE_1__*,int ,int ) ;

__attribute__((used)) static bool
_bt_parallel_readpage(IndexScanDesc scan, BlockNumber blkno, ScanDirection dir)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;

 _bt_initialize_more_data(so, dir);

 if (!_bt_readnextpage(scan, blkno, dir))
  return 0;


 _bt_drop_lock_and_maybe_pin(scan, &so->currPos);

 return 1;
}
