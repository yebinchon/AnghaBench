
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int remoteConnHashEnt ;
struct TYPE_3__ {int entrysize; int keysize; } ;
typedef int HTAB ;
typedef TYPE_1__ HASHCTL ;


 int HASH_ELEM ;
 int NAMEDATALEN ;
 int NUMCONN ;
 int * hash_create (char*,int ,TYPE_1__*,int ) ;

__attribute__((used)) static HTAB *
createConnHash(void)
{
 HASHCTL ctl;

 ctl.keysize = NAMEDATALEN;
 ctl.entrysize = sizeof(remoteConnHashEnt);

 return hash_create("Remote Con hash", NUMCONN, &ctl, HASH_ELEM);
}
