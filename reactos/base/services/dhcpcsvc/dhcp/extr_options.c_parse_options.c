
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packet {int packet_length; TYPE_1__* raw; TYPE_2__* options; scalar_t__ options_valid; } ;
struct TYPE_4__ {int* data; } ;
struct TYPE_3__ {unsigned char* options; scalar_t__ sname; scalar_t__ file; } ;


 int DHCP_FIXED_NON_UDP ;
 int DHCP_OPTIONS_COOKIE ;
 size_t DHO_DHCP_OPTION_OVERLOAD ;
 scalar_t__ memcmp (unsigned char*,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int parse_option_buffer (struct packet*,unsigned char*,int) ;

void
parse_options(struct packet *packet)
{

 memset(packet->options, 0, sizeof(packet->options));


 if (memcmp(packet->raw->options, DHCP_OPTIONS_COOKIE, 4)) {
  packet->options_valid = 0;
  return;
 }





 parse_option_buffer(packet, &packet->raw->options[4],
     packet->packet_length - DHCP_FIXED_NON_UDP - 4);





 if (packet->options_valid &&
     packet->options[DHO_DHCP_OPTION_OVERLOAD].data) {
  if (packet->options[DHO_DHCP_OPTION_OVERLOAD].data[0] & 1)
   parse_option_buffer(packet,
       (unsigned char *)packet->raw->file,
       sizeof(packet->raw->file));
  if (packet->options[DHO_DHCP_OPTION_OVERLOAD].data[0] & 2)
   parse_option_buffer(packet,
       (unsigned char *)packet->raw->sname,
       sizeof(packet->raw->sname));
 }
}
