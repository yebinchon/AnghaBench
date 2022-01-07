
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct tree_cache {int dummy; } ;
struct packet {TYPE_1__* options; } ;
struct dhcp_packet {unsigned char* options; } ;
typedef int priority_list ;
typedef int buffer ;
struct TYPE_2__ {unsigned char* data; int len; } ;


 int DHCP_FILE_LEN ;
 int DHCP_FIXED_LEN ;
 int DHCP_FIXED_NON_UDP ;
 unsigned char* DHCP_OPTIONS_COOKIE ;
 unsigned char DHO_DHCP_LEASE_TIME ;
 size_t DHO_DHCP_MAX_MESSAGE_SIZE ;
 unsigned char DHO_DHCP_MESSAGE ;
 unsigned char DHO_DHCP_MESSAGE_TYPE ;
 unsigned char DHO_DHCP_OPTION_OVERLOAD ;
 size_t DHO_DHCP_PARAMETER_REQUEST_LIST ;
 unsigned char DHO_DHCP_SERVER_IDENTIFIER ;
 unsigned char DHO_END ;
 unsigned char* dhcp_option_default_priority_list ;
 int getUShort (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int sizeof_dhcp_option_default_priority_list ;
 int store_options (unsigned char*,int,struct tree_cache**,unsigned char*,int,int,int) ;

int
cons_options(struct packet *inpacket, struct dhcp_packet *outpacket,
    int mms, struct tree_cache **options)
{
 unsigned char priority_list[300], buffer[4096];
 int priority_len, main_buffer_size, mainbufix;
 int option_size, length;
 if (!mms &&
     inpacket &&
     inpacket->options[DHO_DHCP_MAX_MESSAGE_SIZE].data &&
     (inpacket->options[DHO_DHCP_MAX_MESSAGE_SIZE].len >=
     sizeof(u_int16_t)))
  mms = getUShort(
      inpacket->options[DHO_DHCP_MAX_MESSAGE_SIZE].data);

 if (mms)
  main_buffer_size = mms - DHCP_FIXED_LEN;
 else
  main_buffer_size = 576 - DHCP_FIXED_LEN;

 if (main_buffer_size > sizeof(buffer))
  main_buffer_size = sizeof(buffer);


 priority_len = 0;
 priority_list[priority_len++] = DHO_DHCP_MESSAGE_TYPE;
 priority_list[priority_len++] = DHO_DHCP_SERVER_IDENTIFIER;
 priority_list[priority_len++] = DHO_DHCP_LEASE_TIME;
 priority_list[priority_len++] = DHO_DHCP_MESSAGE;






 if (inpacket &&
     inpacket->options[DHO_DHCP_PARAMETER_REQUEST_LIST].data) {
  int prlen =
      inpacket->options[DHO_DHCP_PARAMETER_REQUEST_LIST].len;
  if (prlen + priority_len > sizeof(priority_list))
   prlen = sizeof(priority_list) - priority_len;

  memcpy(&priority_list[priority_len],
      inpacket->options[DHO_DHCP_PARAMETER_REQUEST_LIST].data,
      prlen);
  priority_len += prlen;
 } else {
  memcpy(&priority_list[priority_len],
      dhcp_option_default_priority_list,
      sizeof_dhcp_option_default_priority_list);
  priority_len += sizeof_dhcp_option_default_priority_list;
 }


 option_size = store_options(
     buffer,
     main_buffer_size - 7,
     options, priority_list, priority_len, main_buffer_size,
     main_buffer_size);


 memcpy(outpacket->options, DHCP_OPTIONS_COOKIE, 4);
 mainbufix = 4;






 if (option_size <= main_buffer_size - mainbufix) {
  memcpy(&outpacket->options[mainbufix],
      buffer, option_size);
  mainbufix += option_size;
  if (mainbufix < main_buffer_size)
   outpacket->options[mainbufix++] = DHO_END;
  length = DHCP_FIXED_NON_UDP + mainbufix;
 } else {
  outpacket->options[mainbufix++] = DHO_DHCP_OPTION_OVERLOAD;
  outpacket->options[mainbufix++] = 1;
  if (option_size >
      main_buffer_size - mainbufix + DHCP_FILE_LEN)
   outpacket->options[mainbufix++] = 3;
  else
   outpacket->options[mainbufix++] = 1;

  memcpy(&outpacket->options[mainbufix],
      buffer, main_buffer_size - mainbufix);
  length = DHCP_FIXED_NON_UDP + mainbufix;
 }
 return (length);
}
