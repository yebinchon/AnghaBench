
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twitch_ingest {char const* url; } ;
struct rtmp_common {char const* service; char const* server; scalar_t__ key; } ;


 scalar_t__ strcmp (char const*,char*) ;
 struct twitch_ingest twitch_ingest (int ) ;
 int twitch_ingests_lock () ;
 int twitch_ingests_refresh (int) ;
 int twitch_ingests_unlock () ;
 char const* younow_get_ingest (char const*,scalar_t__) ;

__attribute__((used)) static const char *rtmp_common_url(void *data)
{
 struct rtmp_common *service = data;

 if (service->service && strcmp(service->service, "Twitch") == 0) {
  if (service->server && strcmp(service->server, "auto") == 0) {
   struct twitch_ingest ing;

   twitch_ingests_refresh(3);

   twitch_ingests_lock();
   ing = twitch_ingest(0);
   twitch_ingests_unlock();

   return ing.url;
  }
 }

 if (service->service && strcmp(service->service, "YouNow") == 0) {
  if (service->server && service->key) {
   return younow_get_ingest(service->server, service->key);
  }
 }

 return service->server;
}
