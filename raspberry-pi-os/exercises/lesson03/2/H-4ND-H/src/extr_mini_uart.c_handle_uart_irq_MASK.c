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

/* Variables and functions */
 int /*<<< orphan*/  AUX_MU_IIR_REG ; 
 int /*<<< orphan*/  AUX_MU_IO_REG ; 
 int /*<<< orphan*/  AUX_MU_LSR_REG ; 
 scalar_t__ BUFFER_SIZE ; 
 char* buffer ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ rd_buffer_index ; 
 scalar_t__ wr_buffer_index ; 

void FUNC2()
{
	unsigned int id = FUNC0(AUX_MU_IIR_REG);
	if((id & 0x06) == 0x04)
	{
		while(FUNC0(AUX_MU_LSR_REG)&0x01)
		{
			buffer[wr_buffer_index++] = FUNC0(AUX_MU_IO_REG)&0xFF;
			if(wr_buffer_index == BUFFER_SIZE)
				wr_buffer_index = 0;
		}
	}
	if((id & 0x06) == 0x02)
	{
		while(FUNC0(AUX_MU_LSR_REG)&0x20) 
		{
			if(rd_buffer_index == wr_buffer_index)
			  break;
			char c = buffer[rd_buffer_index++];
			FUNC1(AUX_MU_IO_REG,c);
			if(rd_buffer_index == BUFFER_SIZE)
				rd_buffer_index = 0;
		}
	}
}