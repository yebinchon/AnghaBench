#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int num_bytes; int /*<<< orphan*/ * dbuffer; } ;
struct TYPE_4__ {int num_bytes; } ;
struct TYPE_6__ {TYPE_2__ read_data; TYPE_1__ get_data; } ;
struct msm_eeprom_cfg_data {TYPE_3__ cfg; int /*<<< orphan*/  cfgtype; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_EEPROM_GET_CAL_DATA ; 
 int /*<<< orphan*/  CFG_EEPROM_READ_CAL_DATA ; 
 int /*<<< orphan*/  VIDIOC_MSM_EEPROM_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct msm_eeprom_cfg_data*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint8_t* FUNC4(int eeprom_fd, size_t *out_len) {
  int err;

  struct msm_eeprom_cfg_data cfg = {0};
  cfg.cfgtype = CFG_EEPROM_GET_CAL_DATA;
  err = FUNC1(eeprom_fd, VIDIOC_MSM_EEPROM_CFG, &cfg);
  FUNC0(err >= 0);

  uint32_t num_bytes = cfg.cfg.get_data.num_bytes;
  FUNC0(num_bytes > 100);

  uint8_t* buffer = FUNC2(num_bytes);
  FUNC0(*buffer);
  FUNC3(buffer, 0, num_bytes);

  cfg.cfgtype = CFG_EEPROM_READ_CAL_DATA;
  cfg.cfg.read_data.num_bytes = num_bytes;
  cfg.cfg.read_data.dbuffer = buffer;
  err = FUNC1(eeprom_fd, VIDIOC_MSM_EEPROM_CFG, &cfg);
  FUNC0(err >= 0);

  *out_len = num_bytes;
  return buffer;
}