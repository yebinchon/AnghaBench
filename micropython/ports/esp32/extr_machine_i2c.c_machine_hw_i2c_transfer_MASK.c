#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  mp_obj_base_t ;
struct TYPE_5__ {int len; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ mp_machine_i2c_buf_t ;
struct TYPE_6__ {int /*<<< orphan*/  port; } ;
typedef  TYPE_2__ machine_hw_i2c_obj_t ;
typedef  int /*<<< orphan*/  i2c_cmd_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_TIMEOUT ; 
 scalar_t__ ESP_FAIL ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  I2C_MASTER_ACK ; 
 int /*<<< orphan*/  I2C_MASTER_LAST_NACK ; 
 int MP_ENODEV ; 
 int MP_ETIMEDOUT ; 
 unsigned int MP_MACHINE_I2C_FLAG_READ ; 
 unsigned int MP_MACHINE_I2C_FLAG_STOP ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int portTICK_RATE_MS ; 

int FUNC10(mp_obj_base_t *self_in, uint16_t addr, size_t n, mp_machine_i2c_buf_t *bufs, unsigned int flags) {
    machine_hw_i2c_obj_t *self = FUNC0(self_in);

    i2c_cmd_handle_t cmd = FUNC2();
    FUNC6(cmd);
    FUNC9(cmd, addr << 1 | (flags & MP_MACHINE_I2C_FLAG_READ), true);

    int data_len = 0;
    for (; n--; ++bufs) {
        if (flags & MP_MACHINE_I2C_FLAG_READ) {
            FUNC5(cmd, bufs->buf, bufs->len, n == 0 ? I2C_MASTER_LAST_NACK : I2C_MASTER_ACK);
        } else {
            if (bufs->len != 0) {
                FUNC8(cmd, bufs->buf, bufs->len, true);
            }
        }
        data_len += bufs->len;
    }

    if (flags & MP_MACHINE_I2C_FLAG_STOP) {
        FUNC7(cmd);
    }

    // TODO proper timeout
    esp_err_t err = FUNC4(self->port, cmd, 100 * (1 + data_len) / portTICK_RATE_MS);
    FUNC3(cmd);

    if (err == ESP_FAIL) {
        return -MP_ENODEV;
    } else if (err == ESP_ERR_TIMEOUT) {
        return -MP_ETIMEDOUT;
    } else if (err != ESP_OK) {
        return -FUNC1(err);
    }

    return data_len;
}