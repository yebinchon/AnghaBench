
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct espconn* udp; } ;
struct espconn {int local_port; int state; int type; TYPE_1__ proto; } ;
typedef scalar_t__ int8_t ;
typedef struct espconn esp_udp ;
struct TYPE_4__ {struct espconn* espconn_dns_udp; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int ENDUSER_SETUP_ERROR (char*,int ,int ) ;
 int ENDUSER_SETUP_ERR_ALREADY_INITIALIZED ;
 int ENDUSER_SETUP_ERR_FATAL ;
 int ENDUSER_SETUP_ERR_OUT_OF_MEMORY ;
 int ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN ;
 int ENDUSER_SETUP_ERR_UNKOWN_ERROR ;
 scalar_t__ ESPCONN_ISCONN ;
 scalar_t__ ESPCONN_MEM ;
 int ESPCONN_NONE ;
 int ESPCONN_UDP ;
 int enduser_setup_dns_recv_callback ;
 scalar_t__ espconn_create (struct espconn*) ;
 scalar_t__ espconn_regist_recvcb (struct espconn*,int ) ;
 scalar_t__ malloc (int) ;
 int memset (struct espconn*,int ,int) ;
 TYPE_2__* state ;

__attribute__((used)) static int enduser_setup_dns_start(void)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_dns_start");

  if (state->espconn_dns_udp != ((void*)0))
  {
    ENDUSER_SETUP_ERROR("dns_start failed. Appears to already be started (espconn_dns_udp != NULL).", ENDUSER_SETUP_ERR_ALREADY_INITIALIZED, ENDUSER_SETUP_ERR_FATAL);
  }
  state->espconn_dns_udp = (struct espconn *) malloc(sizeof(struct espconn));
  if (state->espconn_dns_udp == ((void*)0))
  {
    ENDUSER_SETUP_ERROR("dns_start failed. Memory allocation failed (espconn_dns_udp == NULL).", ENDUSER_SETUP_ERR_OUT_OF_MEMORY, ENDUSER_SETUP_ERR_FATAL);
  }

  esp_udp *esp_udp_data = (esp_udp *) malloc(sizeof(esp_udp));
  if (esp_udp_data == ((void*)0))
  {
    ENDUSER_SETUP_ERROR("dns_start failed. Memory allocation failed (esp_udp == NULL).", ENDUSER_SETUP_ERR_OUT_OF_MEMORY, ENDUSER_SETUP_ERR_FATAL);
  }

  memset(state->espconn_dns_udp, 0, sizeof(struct espconn));
  memset(esp_udp_data, 0, sizeof(esp_udp));
  state->espconn_dns_udp->proto.udp = esp_udp_data;
  state->espconn_dns_udp->type = ESPCONN_UDP;
  state->espconn_dns_udp->state = ESPCONN_NONE;
  esp_udp_data->local_port = 53;

  int8_t err;
  err = espconn_regist_recvcb(state->espconn_dns_udp, enduser_setup_dns_recv_callback);
  if (err != 0)
  {
    ENDUSER_SETUP_ERROR("dns_start failed. Couldn't add receive callback, unknown error.", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_FATAL);
  }

  err = espconn_create(state->espconn_dns_udp);
  if (err == ESPCONN_ISCONN)
  {
    ENDUSER_SETUP_ERROR("dns_start failed. Couldn't create connection, already listening for that connection.", ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN, ENDUSER_SETUP_ERR_FATAL);
  }
  else if (err == ESPCONN_MEM)
  {
    ENDUSER_SETUP_ERROR("dns_start failed. Couldn't create connection, out of memory.", ENDUSER_SETUP_ERR_OUT_OF_MEMORY, ENDUSER_SETUP_ERR_FATAL);
  }
  else if (err != 0)
  {
    ENDUSER_SETUP_ERROR("dns_start failed. Couldn't create connection, unknown error.", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_FATAL);
  }

  return 0;
}
