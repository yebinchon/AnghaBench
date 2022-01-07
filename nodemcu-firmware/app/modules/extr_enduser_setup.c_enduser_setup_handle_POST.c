
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int ENDUSER_SETUP_ERROR_VOID (char*,int ,int ) ;
 int ENDUSER_SETUP_ERR_NONFATAL ;
 int ENDUSER_SETUP_ERR_UNKOWN_ERROR ;
 int LITLEN (int ) ;
 int atoi (char*) ;
 int enduser_setup_http_handle_credentials (char*,int) ;
 int enduser_setup_http_serve_header (struct tcp_pcb*,int ,int ) ;
 int enduser_setup_write_file_with_extra_configuration_data (char*,int) ;
 int http_header_302_trying ;
 int http_header_400 ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void enduser_setup_handle_POST(struct tcp_pcb *http_client, char* data, size_t data_len)
{
    ENDUSER_SETUP_DEBUG("Handling POST");
    if (strncmp(data + 5, "/setwifi ", 9) == 0)
    {
      char* body=strstr(data, "\r\n\r\n");
      char *content_length_str = strstr(data, "Content-Length: ");
      if( body == ((void*)0) || content_length_str == ((void*)0))
      {
        enduser_setup_http_serve_header(http_client, http_header_400, LITLEN(http_header_400));
        return;
      }
      int bodylength = atoi(content_length_str + 16);
      body += 4;
      switch (enduser_setup_http_handle_credentials(body, bodylength))
      {
        case 0: {

            enduser_setup_write_file_with_extra_configuration_data(body, bodylength);

          enduser_setup_http_serve_header(http_client, http_header_302_trying, LITLEN(http_header_302_trying));
          break;
        }
        case 1:
          enduser_setup_http_serve_header(http_client, http_header_400, LITLEN(http_header_400));
          break;
        default:
          ENDUSER_SETUP_ERROR_VOID("http_recvcb failed. Failed to handle wifi credentials.", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_NONFATAL);
          break;
      }
    }
}
