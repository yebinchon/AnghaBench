
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer; } ;
typedef TYPE_1__ PrivateRefCountEntry ;
typedef int HASH_SEQ_STATUS ;


 int Assert (int) ;
 scalar_t__ InvalidBuffer ;
 int PrintBufferLeakWarning (scalar_t__) ;
 TYPE_1__* PrivateRefCountArray ;
 int PrivateRefCountHash ;
 scalar_t__ PrivateRefCountOverflowed ;
 int REFCOUNT_ARRAY_ENTRIES ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
CheckForBufferLeaks(void)
{
}
