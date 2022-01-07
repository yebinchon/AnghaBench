
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int SeqTableData ;
typedef int Oid ;
typedef TYPE_1__ HASHCTL ;


 int HASH_BLOBS ;
 int HASH_ELEM ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int seqhashtab ;

__attribute__((used)) static void
create_seq_hashtable(void)
{
 HASHCTL ctl;

 memset(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(Oid);
 ctl.entrysize = sizeof(SeqTableData);

 seqhashtab = hash_create("Sequence values", 16, &ctl,
        HASH_ELEM | HASH_BLOBS);
}
