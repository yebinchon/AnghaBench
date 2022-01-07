
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Datum ;


 int publications_valid ;
 int rel_sync_cache_publication_cb (int ,int,int ) ;

__attribute__((used)) static void
publication_invalidation_cb(Datum arg, int cacheid, uint32 hashvalue)
{
 publications_valid = 0;





 rel_sync_cache_publication_cb(arg, cacheid, hashvalue);
}
