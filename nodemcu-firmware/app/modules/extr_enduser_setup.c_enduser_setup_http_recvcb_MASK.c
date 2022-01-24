#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tcp_pcb {int dummy; } ;
struct pbuf {scalar_t__ tot_len; } ;
struct TYPE_6__ {struct tcp_pcb* conn; struct TYPE_6__* next; } ;
typedef  TYPE_1__ scan_listener_t ;
typedef  scalar_t__ err_t ;
struct TYPE_7__ {scalar_t__ connecting; TYPE_1__* scan_listeners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENDUSER_SETUP_ERR_NONFATAL ; 
 int /*<<< orphan*/  ENDUSER_SETUP_ERR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ENDUSER_SETUP_ERR_UNKOWN_ERROR ; 
 scalar_t__ ERR_ABRT ; 
 scalar_t__ ERR_MEM ; 
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_pcb*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct tcp_pcb*,char*,unsigned int) ; 
 int FUNC7 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct tcp_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC10 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC11 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  http_header_204 ; 
 int /*<<< orphan*/  http_header_302 ; 
 int /*<<< orphan*/  http_header_400 ; 
 int /*<<< orphan*/  http_header_404 ; 
 int /*<<< orphan*/  http_header_405 ; 
 int /*<<< orphan*/  http_header_500 ; 
 TYPE_1__* FUNC14 (int) ; 
 int /*<<< orphan*/  on_scan_done ; 
 unsigned int FUNC15 (struct pbuf*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 TYPE_3__* state ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC20 (struct tcp_pcb*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (struct tcp_pcb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC23(void *arg, struct tcp_pcb *http_client, struct pbuf *p, err_t err)
{
  FUNC0("enduser_setup_http_recvcb");

  if (!state || err != ERR_OK)
  {
    if (!state)
      FUNC0("ignoring received data while stopped");
    FUNC19 (http_client);
    return ERR_ABRT;
  }

  if (!p) /* remote side closed, close our end too */
  {
    FUNC0("connection closed");
    scan_listener_t *l = arg; /* if it's waiting for scan, we have a ptr here */
    if (l)
      FUNC17 (l);

    FUNC4 (http_client);
    return ERR_OK;
  }

  char *data = FUNC3 (1, p->tot_len + 1);
  if (!data)
    return ERR_MEM;

  unsigned data_len = FUNC15 (p, data, p->tot_len, 0);
  FUNC21 (http_client, p->tot_len);
  FUNC16 (p);

  err_t ret = ERR_OK;

#if ENDUSER_SETUP_DEBUG_SHOW_HTTP_REQUEST
  ENDUSER_SETUP_DEBUG(data);
#endif

  if (FUNC18(data, "GET ", 4) == 0)
  {
    if (FUNC18(data + 4, "/ ", 2) == 0 || FUNC18(data + 4, "/?", 2) == 0)
    {
      if (FUNC9(http_client) != 0)
      {
        FUNC1("http_recvcb failed. Unable to send HTML.", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_NONFATAL);
      }
      else
      {
        goto free_out; /* streaming now in progress */
      }
    }
    else if (FUNC18(data + 4, "/aplist", 7) == 0)
    {
      /* Don't do an AP Scan while station is trying to connect to Wi-Fi */
      if (state->connecting == 0)
      {
        scan_listener_t *l = FUNC14 (sizeof (scan_listener_t));
        if (!l)
        {
          FUNC1("out of memory", ENDUSER_SETUP_ERR_OUT_OF_MEMORY, ENDUSER_SETUP_ERR_NONFATAL);
        }

        bool already = (state->scan_listeners != NULL);

        FUNC20 (http_client, l);
        /* TODO: check if also need a tcp_err() cb, or if recv() is enough */
        l->conn = http_client;
        l->next = state->scan_listeners;
        state->scan_listeners = l;

        if (!already)
        {
          if (!FUNC22(NULL, on_scan_done))
          {
            FUNC8(http_client, http_header_500, FUNC2(http_header_500));
            FUNC4 (l->conn);
            l->conn = 0;
            FUNC13();
          }
        }
        goto free_out; /* request queued */
      }
      else
      {
        /* Return No Content status to the caller */
        FUNC8(http_client, http_header_204, FUNC2(http_header_204));
      }
    }
    else if (FUNC18(data + 4, "/status.json", 12) == 0)
    {
    FUNC11(http_client);
    }
    else if (FUNC18(data + 4, "/status", 7) == 0)
    {
      FUNC10(http_client);
    }

    else if (FUNC18(data + 4, "/update?", 8) == 0)
    {
      switch (FUNC7(data, data_len))
      {
        case 0:
          FUNC8(http_client, http_header_302, FUNC2(http_header_302));
          break;
        case 1:
          FUNC8(http_client, http_header_400, FUNC2(http_header_400));
          break;
        default:
          FUNC1("http_recvcb failed. Failed to handle wifi credentials.", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_NONFATAL);
          break;
      }
    }
    else if (FUNC18(data + 4, "/generate_204", 13) == 0)
    {
      /* Convince Android devices that they have internet access to avoid pesky dialogues. */
      FUNC8(http_client, http_header_204, FUNC2(http_header_204));
    }
    else
    {
      FUNC0("serving 404");
      FUNC8(http_client, http_header_404, FUNC2(http_header_404));
    }
  }
  else if (FUNC18(data, "OPTIONS ", 8) == 0)
  {
     FUNC5(http_client, data, data_len);
  }
  else if (FUNC18(data, "POST ", 5) == 0)
  {
    FUNC6(http_client, data, data_len);
  }
  else /* not GET or OPTIONS */
  {
    FUNC8(http_client, http_header_405, FUNC2(http_header_405));
  }

  FUNC4 (http_client);

free_out:
  FUNC12 (data);
  return ret;
}