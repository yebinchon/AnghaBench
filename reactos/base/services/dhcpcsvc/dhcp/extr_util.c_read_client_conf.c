
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u_int8_t ;
struct TYPE_6__ {char* haddr; int hlen; } ;
struct interface_info {TYPE_3__ hw_address; TYPE_1__* client; } ;
struct client_config {size_t* requested_options; int requested_option_count; TYPE_2__* send_options; } ;
struct TYPE_5__ {char* data; int len; } ;
struct TYPE_4__ {struct client_config* config; } ;
typedef int * LPSTR ;
typedef int DWORD ;


 size_t DHO_BROADCAST_ADDRESS ;
 size_t DHO_DHCP_CLIENT_IDENTIFIER ;
 size_t DHO_DOMAIN_NAME ;
 size_t DHO_DOMAIN_NAME_SERVERS ;
 size_t DHO_HOST_NAME ;
 size_t DHO_NTP_SERVERS ;
 size_t DHO_ROUTERS ;
 size_t DHO_SUBNET_MASK ;
 size_t DHO_TIME_OFFSET ;
 int GetComputerName (char*,int*) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int MAX_COMPUTERNAME_LENGTH ;
 int debug (char*,char*,int) ;
 int error (char*) ;
 int memcpy (int *,char*,int) ;
 int warn (char*) ;

int read_client_conf(struct interface_info *ifi) {

       struct client_config *config;
       char ComputerName [MAX_COMPUTERNAME_LENGTH + 1];
       LPSTR lpCompName;
       DWORD ComputerNameSize = sizeof ComputerName / sizeof ComputerName[0];

       if ((ifi!= ((void*)0)) && (ifi->client->config != ((void*)0)))
          config = ifi->client->config;
       else
       {
           warn("util.c read_client_conf poorly implemented!");
           return 0;
       }


       GetComputerName(ComputerName, & ComputerNameSize);
       debug("Hostname: %s, length: %lu",
      ComputerName, ComputerNameSize);

       lpCompName =
       HeapAlloc(GetProcessHeap(), 0, ComputerNameSize + 1);
       if (lpCompName !=((void*)0)) {
           memcpy(lpCompName, ComputerName, ComputerNameSize + 1);

           config->send_options[DHO_HOST_NAME].data = (u_int8_t*)lpCompName;
           config->send_options[DHO_HOST_NAME].len = ComputerNameSize;
           debug("Hostname: %s, length: %d",
                 config->send_options[DHO_HOST_NAME].data,
                 config->send_options[DHO_HOST_NAME].len);
       } else {
           error("Failed to allocate heap for hostname");
       }

       config->send_options[DHO_DHCP_CLIENT_IDENTIFIER].data =
             ifi->hw_address.haddr;
       config->send_options[DHO_DHCP_CLIENT_IDENTIFIER].len =
             ifi->hw_address.hlen;


       config->requested_options
           [config->requested_option_count++] = DHO_SUBNET_MASK;
       config->requested_options
           [config->requested_option_count++] = DHO_BROADCAST_ADDRESS;
       config->requested_options
           [config->requested_option_count++] = DHO_TIME_OFFSET;
       config->requested_options
           [config->requested_option_count++] = DHO_ROUTERS;
       config->requested_options
           [config->requested_option_count++] = DHO_DOMAIN_NAME;
       config->requested_options
           [config->requested_option_count++] = DHO_DOMAIN_NAME_SERVERS;
       config->requested_options
           [config->requested_option_count++] = DHO_HOST_NAME;
       config->requested_options
           [config->requested_option_count++] = DHO_NTP_SERVERS;

       warn("util.c read_client_conf poorly implemented!");
    return 0;
}
