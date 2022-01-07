
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct tcp_pcb {int dummy; } ;
struct pbuf {int* payload; scalar_t__ len; int tot_len; } ;
typedef scalar_t__ err_t ;


 int ALL_APP_LED ;
 int APPL_LOG (char*) ;
 int DISPLAY_LED_0 ;
 int DISPLAY_LED_1 ;
 int DISPLAY_LED_2 ;
 int DISPLAY_LED_3 ;
 scalar_t__ ERR_OK ;
 int LEDS_OFF (int ) ;
 int LEDS_ON (int ) ;
 scalar_t__ TCP_DATA_SIZE ;
 int UNUSED_VARIABLE (int ) ;
 int mp_tcp_port ;
 int pbuf_free (struct pbuf*) ;
 int tcp_port_close (int ) ;
 int tcp_recved (struct tcp_pcb*,int ) ;
 int tcp_send_data (struct tcp_pcb*,int) ;

err_t tcp_recv_data_handler(void * p_arg,
    struct tcp_pcb * p_pcb,
    struct pbuf * p_buffer,
    err_t err)
{
  APPL_LOG ("[APPL]: >> TCP Data.\r\n");


  if (err == ERR_OK)
  {
    uint8_t *p_data = p_buffer->payload;

    if (p_buffer->len == TCP_DATA_SIZE)
    {
      uint32_t sequence_number = 0;

      sequence_number = ((p_data[0] << 24) & 0xFF000000);
      sequence_number |= ((p_data[1] << 16) & 0x00FF0000);
      sequence_number |= ((p_data[2] << 8) & 0x0000FF00);
      sequence_number |= (p_data[3] & 0x000000FF);

      LEDS_OFF(ALL_APP_LED);

      if (sequence_number & 0x00000001)
      {
        LEDS_ON(DISPLAY_LED_0);
      }
      if (sequence_number & 0x00000002)
      {
        LEDS_ON(DISPLAY_LED_1);
      }
      if (sequence_number & 0x00000004)
      {
        LEDS_ON(DISPLAY_LED_2);
      }
      if (sequence_number & 0x00000008)
      {
        LEDS_ON(DISPLAY_LED_3);
      }


      tcp_send_data(p_pcb, sequence_number);
    }
    else
    {
      APPL_LOG ("[APPL]: TCP data received in incorrect format.\r\n");
    }

    tcp_recved(p_pcb, p_buffer->tot_len);
    UNUSED_VARIABLE(pbuf_free(p_buffer));
  }
  else
  {

    if (p_buffer != ((void*)0))
    {
      UNUSED_VARIABLE(pbuf_free(p_buffer));
    }


    tcp_port_close(mp_tcp_port);
  }

  return ERR_OK;
}
