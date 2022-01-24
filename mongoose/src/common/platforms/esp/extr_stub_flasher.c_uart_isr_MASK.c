#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  void* uint32_t ;
struct data_buf {scalar_t__ flags; } ;
struct TYPE_2__ {int state; size_t bwi; int /*<<< orphan*/  ps; struct data_buf* bufs; } ;

/* Variables and functions */
#define  READ_DATA 132 
#define  READ_ERROR 131 
#define  READ_FLAGS 130 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
#define  READ_UNESCAPE 129 
#define  READ_WAIT_START 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__ ub ; 

void FUNC10(void *arg) {
  uint32_t int_st = FUNC0(FUNC5(0));
  uint8_t fifo_len, i;
  while ((fifo_len = FUNC0(FUNC6(0))) > 0) {
    for (i = 0; i < fifo_len; i++) {
      uint8_t byte = FUNC0(FUNC2(0));
      switch (ub.state) {
        case READ_WAIT_START: {
          if (byte == 0xc0) {
            ub.state = READ_FLAGS;
            ub.ps = 0;
          }
          break;
        }
        case READ_FLAGS:
        case READ_DATA: {
          struct data_buf *buf = &ub.bufs[ub.bwi];
          if (byte == 0xdb) {
            ub.state = READ_UNESCAPE;
          } else if (byte == 0xc0) {
            FUNC9();
            if (ub.ps == 0) {
              /* Empty packet, sender aborted. */
              ub.state = READ_ERROR;
              FUNC1(FUNC4(0), 0);
              goto out;
            } else {
              ub.state = READ_WAIT_START;
            }
          } else {
            if (ub.state == READ_FLAGS) {
              buf->flags = byte;
              ub.state = READ_DATA;
            } else {
              FUNC8(byte);
            }
          }
          break;
        }
        case READ_UNESCAPE: {
          if (byte == 0xdc) {
            byte = 0xc0;
          } else if (byte == 0xdd) {
            byte = 0xdb;
          } else {
            ub.state = READ_ERROR;
            FUNC1(FUNC4(0), 0);
            goto out;
          }
          FUNC8(byte);
          ub.state = READ_DATA;
          break;
        }
        case READ_ERROR: {
          goto out;
        }
      }
    }
  }
out:
  FUNC7(FUNC3(0), int_st);
  (void) arg;
}