
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int num_bytes; int * dbuffer; } ;
struct TYPE_4__ {int num_bytes; } ;
struct TYPE_6__ {TYPE_2__ read_data; TYPE_1__ get_data; } ;
struct msm_eeprom_cfg_data {TYPE_3__ cfg; int cfgtype; int member_0; } ;


 int CFG_EEPROM_GET_CAL_DATA ;
 int CFG_EEPROM_READ_CAL_DATA ;
 int VIDIOC_MSM_EEPROM_CFG ;
 int assert (int) ;
 int ioctl (int,int ,struct msm_eeprom_cfg_data*) ;
 int * malloc (int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static uint8_t* get_eeprom(int eeprom_fd, size_t *out_len) {
  int err;

  struct msm_eeprom_cfg_data cfg = {0};
  cfg.cfgtype = CFG_EEPROM_GET_CAL_DATA;
  err = ioctl(eeprom_fd, VIDIOC_MSM_EEPROM_CFG, &cfg);
  assert(err >= 0);

  uint32_t num_bytes = cfg.cfg.get_data.num_bytes;
  assert(num_bytes > 100);

  uint8_t* buffer = malloc(num_bytes);
  assert(buffer);
  memset(buffer, 0, num_bytes);

  cfg.cfgtype = CFG_EEPROM_READ_CAL_DATA;
  cfg.cfg.read_data.num_bytes = num_bytes;
  cfg.cfg.read_data.dbuffer = buffer;
  err = ioctl(eeprom_fd, VIDIOC_MSM_EEPROM_CFG, &cfg);
  assert(err >= 0);

  *out_len = num_bytes;
  return buffer;
}
