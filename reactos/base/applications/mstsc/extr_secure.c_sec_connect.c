
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
struct stream {int size; int * data; int * p; } ;
typedef int RD_BOOL ;


 int False ;
 int True ;
 scalar_t__ g_encryption ;
 int mcs_connect_finalize (struct stream*) ;
 int mcs_connect_start (char*,char*,char*,char*,int ,int *) ;
 int sec_establish_key () ;
 int sec_out_mcs_data (struct stream*,int ) ;
 int xfree (int *) ;
 scalar_t__ xmalloc (int) ;

RD_BOOL
sec_connect(char *server, char *username, char *domain, char *password, RD_BOOL reconnect)
{
 uint32 selected_proto;
 struct stream mcs_data;


 if (!mcs_connect_start(server, username, domain, password, reconnect, &selected_proto))
  return False;


 mcs_data.size = 512;
 mcs_data.p = mcs_data.data = (uint8 *) xmalloc(mcs_data.size);
 sec_out_mcs_data(&mcs_data, selected_proto);


 if (!mcs_connect_finalize(&mcs_data))
  return False;


 if (g_encryption)
  sec_establish_key();
 xfree(mcs_data.data);
 return True;
}
