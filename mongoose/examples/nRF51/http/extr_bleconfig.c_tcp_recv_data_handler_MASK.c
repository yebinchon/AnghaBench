#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct tcp_pcb {int dummy; } ;
struct pbuf {int* payload; scalar_t__ len; int /*<<< orphan*/  tot_len; } ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_APP_LED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DISPLAY_LED_0 ; 
 int /*<<< orphan*/  DISPLAY_LED_1 ; 
 int /*<<< orphan*/  DISPLAY_LED_2 ; 
 int /*<<< orphan*/  DISPLAY_LED_3 ; 
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCP_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_tcp_port ; 
 int /*<<< orphan*/  FUNC4 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_pcb*,int) ; 

err_t FUNC8(void           * p_arg,
    struct tcp_pcb * p_pcb,
    struct pbuf    * p_buffer,
    err_t            err)
{
  FUNC0 ("[APPL]: >> TCP Data.\r\n");

  //Check event result before proceeding.
  if (err == ERR_OK)
  {
    uint8_t *p_data = p_buffer->payload;

    if (p_buffer->len == TCP_DATA_SIZE)
    {
      uint32_t sequence_number = 0;

      sequence_number  = ((p_data[0] << 24) & 0xFF000000);
      sequence_number |= ((p_data[1] << 16) & 0x00FF0000);
      sequence_number |= ((p_data[2] << 8)  & 0x0000FF00);
      sequence_number |= (p_data[3]         & 0x000000FF);

      FUNC1(ALL_APP_LED);

      if (sequence_number & 0x00000001)
      {
        FUNC2(DISPLAY_LED_0);
      }
      if (sequence_number & 0x00000002)
      {
        FUNC2(DISPLAY_LED_1);
      }
      if (sequence_number & 0x00000004)
      {
        FUNC2(DISPLAY_LED_2);
      }
      if (sequence_number & 0x00000008)
      {
        FUNC2(DISPLAY_LED_3);
      }

      //Send Response
      FUNC7(p_pcb, sequence_number);
    }
    else
    {
      FUNC0 ("[APPL]: TCP data received in incorrect format.\r\n");
    }
    // All is good with the data received, process it.
    FUNC6(p_pcb, p_buffer->tot_len);
    FUNC3(FUNC4(p_buffer));
  }
  else
  {
    //Free the buffer in case its not NULL.
    if (p_buffer != NULL)
    {
      FUNC3(FUNC4(p_buffer));
    }

    //Something is not right with the port, close the port.
    FUNC5(mp_tcp_port);
  }

  return ERR_OK;
}