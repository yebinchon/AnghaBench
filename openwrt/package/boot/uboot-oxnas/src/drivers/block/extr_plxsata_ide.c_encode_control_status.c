
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long oxnas_dma_transfer_direction_t ;
struct TYPE_4__ {unsigned long dreq_; scalar_t__ bus_; scalar_t__ transfer_mode_; scalar_t__ address_mode_; unsigned long width_; scalar_t__ address_really_fixed_; } ;
typedef TYPE_1__ oxnas_dma_device_settings_t ;


 unsigned long DMA_CTRL_STATUS_DESTINATION_ADDRESS_FIXED ;
 unsigned long DMA_CTRL_STATUS_DEST_ADR_MODE ;
 unsigned long DMA_CTRL_STATUS_DEST_DREQ_SHIFT ;
 unsigned long DMA_CTRL_STATUS_DEST_WIDTH_SHIFT ;
 unsigned long DMA_CTRL_STATUS_DIR_SHIFT ;
 unsigned long DMA_CTRL_STATUS_FAIR_SHARE_ARB ;
 unsigned long DMA_CTRL_STATUS_INTR_CLEAR_ENABLE ;
 unsigned long DMA_CTRL_STATUS_PAUSE ;
 unsigned long DMA_CTRL_STATUS_RESET ;
 unsigned long DMA_CTRL_STATUS_SOURCE_ADDRESS_FIXED ;
 unsigned long DMA_CTRL_STATUS_SRC_ADR_MODE ;
 unsigned long DMA_CTRL_STATUS_SRC_DREQ_SHIFT ;
 unsigned long DMA_CTRL_STATUS_SRC_WIDTH_SHIFT ;
 unsigned long DMA_CTRL_STATUS_STARVE_LOW_PRIORITY ;
 unsigned long DMA_CTRL_STATUS_TRANSFER_MODE_A ;
 unsigned long DMA_CTRL_STATUS_TRANSFER_MODE_B ;
 unsigned long OXNAS_DMA_A_TO_A ;
 unsigned long OXNAS_DMA_A_TO_B ;
 unsigned long OXNAS_DMA_B_TO_A ;
 unsigned long OXNAS_DMA_B_TO_B ;
 scalar_t__ OXNAS_DMA_MODE_FIXED ;
 scalar_t__ OXNAS_DMA_SIDE_A ;
 scalar_t__ OXNAS_DMA_TRANSFER_MODE_BURST ;

__attribute__((used)) static unsigned long encode_control_status(
 oxnas_dma_device_settings_t* src_settings,
 oxnas_dma_device_settings_t* dst_settings)
{
 unsigned long ctrl_status;
 oxnas_dma_transfer_direction_t direction;

 ctrl_status = DMA_CTRL_STATUS_PAUSE;
 ctrl_status |= DMA_CTRL_STATUS_FAIR_SHARE_ARB;
 ctrl_status |= (src_settings->dreq_ << DMA_CTRL_STATUS_SRC_DREQ_SHIFT);
 ctrl_status |= (dst_settings->dreq_ << DMA_CTRL_STATUS_DEST_DREQ_SHIFT);
 ctrl_status &= ~DMA_CTRL_STATUS_RESET;


 ctrl_status |= DMA_CTRL_STATUS_INTR_CLEAR_ENABLE;


 if (src_settings->bus_ == OXNAS_DMA_SIDE_A) {

  if (src_settings->transfer_mode_
   == OXNAS_DMA_TRANSFER_MODE_BURST) {
   ctrl_status |= DMA_CTRL_STATUS_TRANSFER_MODE_A;
  } else {
   ctrl_status &= ~DMA_CTRL_STATUS_TRANSFER_MODE_A;
  }

  if (dst_settings->bus_ == OXNAS_DMA_SIDE_A) {
   direction = OXNAS_DMA_A_TO_A;
  } else {
   direction = OXNAS_DMA_A_TO_B;


   if (dst_settings->transfer_mode_
    == OXNAS_DMA_TRANSFER_MODE_BURST) {
    ctrl_status |= DMA_CTRL_STATUS_TRANSFER_MODE_B;
   } else {
    ctrl_status &= ~DMA_CTRL_STATUS_TRANSFER_MODE_B;
   }
  }
 } else {

  if (src_settings->transfer_mode_
   == OXNAS_DMA_TRANSFER_MODE_BURST) {
   ctrl_status |= DMA_CTRL_STATUS_TRANSFER_MODE_B;
  } else {
   ctrl_status &= ~DMA_CTRL_STATUS_TRANSFER_MODE_B;
  }

  if (dst_settings->bus_ == OXNAS_DMA_SIDE_A) {
   direction = OXNAS_DMA_B_TO_A;


   if (dst_settings->transfer_mode_
    == OXNAS_DMA_TRANSFER_MODE_BURST) {
    ctrl_status |= DMA_CTRL_STATUS_TRANSFER_MODE_A;
   } else {
    ctrl_status &= ~DMA_CTRL_STATUS_TRANSFER_MODE_A;
   }
  } else {
   direction = OXNAS_DMA_B_TO_B;
  }
 }
 ctrl_status |= (direction << DMA_CTRL_STATUS_DIR_SHIFT);


 if (src_settings->address_mode_ == OXNAS_DMA_MODE_FIXED) {

  ctrl_status &= ~(DMA_CTRL_STATUS_SRC_ADR_MODE);


  if (src_settings->address_really_fixed_) {
   ctrl_status |= DMA_CTRL_STATUS_SOURCE_ADDRESS_FIXED;
  } else {
   ctrl_status &= ~DMA_CTRL_STATUS_SOURCE_ADDRESS_FIXED;
  }
 } else {

  ctrl_status |= DMA_CTRL_STATUS_SRC_ADR_MODE;
  ctrl_status &= ~DMA_CTRL_STATUS_SOURCE_ADDRESS_FIXED;
 }


 if (dst_settings->address_mode_ == OXNAS_DMA_MODE_FIXED) {

  ctrl_status &= ~(DMA_CTRL_STATUS_DEST_ADR_MODE);


  if (dst_settings->address_really_fixed_) {
   ctrl_status |=
    DMA_CTRL_STATUS_DESTINATION_ADDRESS_FIXED;
  } else {
   ctrl_status &=
    ~DMA_CTRL_STATUS_DESTINATION_ADDRESS_FIXED;
  }
 } else {

  ctrl_status |= DMA_CTRL_STATUS_DEST_ADR_MODE;
  ctrl_status &= ~DMA_CTRL_STATUS_DESTINATION_ADDRESS_FIXED;
 }


 ctrl_status |=
  (src_settings->width_ << DMA_CTRL_STATUS_SRC_WIDTH_SHIFT);
 ctrl_status |=
  (dst_settings->width_ << DMA_CTRL_STATUS_DEST_WIDTH_SHIFT);


 ctrl_status &= ~DMA_CTRL_STATUS_STARVE_LOW_PRIORITY;

 return ctrl_status;
}
