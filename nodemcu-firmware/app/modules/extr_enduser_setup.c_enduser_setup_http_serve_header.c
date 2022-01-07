
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcp_pcb {int dummy; } ;
typedef scalar_t__ err_t ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int ENDUSER_SETUP_ERROR (char*,int ,int ) ;
 int ENDUSER_SETUP_ERR_NONFATAL ;
 int ENDUSER_SETUP_ERR_UNKOWN_ERROR ;
 scalar_t__ ERR_OK ;
 int TCP_WRITE_FLAG_COPY ;
 int deferred_close (struct tcp_pcb*) ;
 scalar_t__ tcp_write (struct tcp_pcb*,char const*,int ,int ) ;

__attribute__((used)) static int enduser_setup_http_serve_header(struct tcp_pcb *http_client, const char *header, uint32_t header_len)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_http_serve_header");

  err_t err = tcp_write (http_client, header, header_len, TCP_WRITE_FLAG_COPY);
  if (err != ERR_OK)
  {
    deferred_close (http_client);
    ENDUSER_SETUP_ERROR("http_serve_header failed on tcp_write", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_NONFATAL);
  }

  return 0;
}
