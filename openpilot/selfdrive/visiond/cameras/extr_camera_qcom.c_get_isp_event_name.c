
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char* get_isp_event_name(unsigned int type) {
  switch (type) {
  case 135: return "ISP_EVENT_REG_UPDATE";
  case 143: return "ISP_EVENT_EPOCH_0";
  case 142: return "ISP_EVENT_EPOCH_1";
  case 132: return "ISP_EVENT_START_ACK";
  case 129: return "ISP_EVENT_STOP_ACK";
  case 137: return "ISP_EVENT_IRQ_VIOLATION";
  case 130: return "ISP_EVENT_STATS_OVERFLOW";
  case 141: return "ISP_EVENT_ERROR";
  case 133: return "ISP_EVENT_SOF";
  case 144: return "ISP_EVENT_EOF";
  case 147: return "ISP_EVENT_BUF_DONE";
  case 148: return "ISP_EVENT_BUF_DIVERT";
  case 131: return "ISP_EVENT_STATS_NOTIFY";
  case 145: return "ISP_EVENT_COMP_STATS_NOTIFY";
  case 140: return "ISP_EVENT_FE_READ_DONE";
  case 138: return "ISP_EVENT_IOMMU_P_FAULT";
  case 139: return "ISP_EVENT_HW_FATAL_ERROR";
  case 136: return "ISP_EVENT_PING_PONG_MISMATCH";
  case 134: return "ISP_EVENT_REG_UPDATE_MISSING";
  case 146: return "ISP_EVENT_BUF_FATAL_ERROR";
  case 128: return "ISP_EVENT_STREAM_UPDATE_DONE";
  default: return "unknown";
  }
}
