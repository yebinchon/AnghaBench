
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hash_ctl ;
struct TYPE_4__ {int entrysize; int keysize; } ;
typedef int PreparedStatement ;
typedef TYPE_1__ HASHCTL ;


 int HASH_ELEM ;
 int MemSet (TYPE_1__*,int ,int) ;
 int NAMEDATALEN ;
 int hash_create (char*,int,TYPE_1__*,int ) ;
 int prepared_queries ;

__attribute__((used)) static void
InitQueryHashTable(void)
{
 HASHCTL hash_ctl;

 MemSet(&hash_ctl, 0, sizeof(hash_ctl));

 hash_ctl.keysize = NAMEDATALEN;
 hash_ctl.entrysize = sizeof(PreparedStatement);

 prepared_queries = hash_create("Prepared Queries",
           32,
           &hash_ctl,
           HASH_ELEM);
}
