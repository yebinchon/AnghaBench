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
struct tcp_pcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENDUSER_SETUP_ERR_NONFATAL ; 
 int /*<<< orphan*/  ENDUSER_SETUP_ERR_UNKOWN_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  http_header_302_trying ; 
 int /*<<< orphan*/  http_header_400 ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(struct tcp_pcb *http_client, char* data, size_t data_len)
{
    FUNC0("Handling POST");
    if (FUNC7(data + 5, "/setwifi ", 9) == 0) // User clicked the submit button
    {
      char* body=FUNC8(data, "\r\n\r\n");
      char *content_length_str = FUNC8(data, "Content-Length: ");
      if( body == NULL || content_length_str == NULL)
      {
        FUNC5(http_client, http_header_400, FUNC2(http_header_400));
        return;
      }
      int bodylength = FUNC3(content_length_str + 16);
      body += 4; // length of the double CRLF found above
      switch (FUNC4(body, bodylength))
      {
        case 0: {
          // all went fine, extract all the form data into a file
            FUNC6(body, bodylength);
          // redirect user to the base page with the trying flag
          FUNC5(http_client, http_header_302_trying, FUNC2(http_header_302_trying));
          break;
        }
        case 1:
          FUNC5(http_client, http_header_400, FUNC2(http_header_400));
          break;
        default:
          FUNC1("http_recvcb failed. Failed to handle wifi credentials.", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_NONFATAL);
          break;
      }
    }
}