
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_4__ {int status; } ;
typedef TYPE_1__ MultiXactMember ;
typedef int MultiXactId ;
typedef scalar_t__ LockTupleMode ;


 int GetMultiXactIdMembers (int ,TYPE_1__**,int,int) ;
 int HEAP_KEYS_UPDATED ;
 int HEAP_XMAX_EXCL_LOCK ;
 int HEAP_XMAX_IS_MULTI ;
 int HEAP_XMAX_KEYSHR_LOCK ;
 int HEAP_XMAX_LOCK_ONLY ;
 int HEAP_XMAX_SHR_LOCK ;
 scalar_t__ LockTupleExclusive ;
 scalar_t__ LockTupleKeyShare ;
 scalar_t__ LockTupleNoKeyExclusive ;
 scalar_t__ LockTupleShare ;






 scalar_t__ TUPLOCK_from_mxstatus (int) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
GetMultiXactIdHintBits(MultiXactId multi, uint16 *new_infomask,
        uint16 *new_infomask2)
{
 int nmembers;
 MultiXactMember *members;
 int i;
 uint16 bits = HEAP_XMAX_IS_MULTI;
 uint16 bits2 = 0;
 bool has_update = 0;
 LockTupleMode strongest = LockTupleKeyShare;





 nmembers = GetMultiXactIdMembers(multi, &members, 0, 0);

 for (i = 0; i < nmembers; i++)
 {
  LockTupleMode mode;





  mode = TUPLOCK_from_mxstatus(members[i].status);
  if (mode > strongest)
   strongest = mode;


  switch (members[i].status)
  {
   case 133:
   case 131:
   case 132:
    break;

   case 130:
    bits2 |= HEAP_KEYS_UPDATED;
    break;

   case 129:
    has_update = 1;
    break;

   case 128:
    bits2 |= HEAP_KEYS_UPDATED;
    has_update = 1;
    break;
  }
 }

 if (strongest == LockTupleExclusive ||
  strongest == LockTupleNoKeyExclusive)
  bits |= HEAP_XMAX_EXCL_LOCK;
 else if (strongest == LockTupleShare)
  bits |= HEAP_XMAX_SHR_LOCK;
 else if (strongest == LockTupleKeyShare)
  bits |= HEAP_XMAX_KEYSHR_LOCK;

 if (!has_update)
  bits |= HEAP_XMAX_LOCK_ONLY;

 if (nmembers > 0)
  pfree(members);

 *new_infomask = bits;
 *new_infomask2 = bits2;
}
