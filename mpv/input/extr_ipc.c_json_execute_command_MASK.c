#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct mpv_handle {int dummy; } ;
struct mp_log {int dummy; } ;
struct TYPE_23__ {char* string; TYPE_2__* list; } ;
struct TYPE_24__ {scalar_t__ format; TYPE_3__ u; } ;
typedef  TYPE_4__ mpv_node ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_21__ {char* string; int /*<<< orphan*/  int64; } ;
struct TYPE_25__ {scalar_t__ format; TYPE_1__ u; } ;
struct TYPE_22__ {int num; TYPE_7__* values; } ;

/* Variables and functions */
 int MPV_ERROR_INVALID_PARAMETER ; 
 int MPV_ERROR_SUCCESS ; 
 scalar_t__ MPV_FORMAT_INT64 ; 
 scalar_t__ MPV_FORMAT_NODE ; 
 scalar_t__ MPV_FORMAT_NODE_ARRAY ; 
 scalar_t__ MPV_FORMAT_NODE_MAP ; 
 scalar_t__ MPV_FORMAT_STRING ; 
 int FUNC0 (void*,TYPE_4__*,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char**,TYPE_4__*) ; 
 struct mp_log* FUNC2 (struct mpv_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (struct mpv_handle*) ; 
 int FUNC7 (struct mpv_handle*,TYPE_4__*,TYPE_4__*) ; 
 char* FUNC8 (int) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int FUNC12 (struct mpv_handle*,char*,scalar_t__,TYPE_4__*) ; 
 char* FUNC13 (struct mpv_handle*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct mpv_handle*) ; 
 TYPE_4__* FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*,TYPE_4__*,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (void*,TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (void*,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (void*,TYPE_4__*,char*,char const*) ; 
 int FUNC20 (struct mpv_handle*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC21 (struct mpv_handle*,int,int) ; 
 int FUNC22 (struct mpv_handle*,char*) ; 
 int FUNC23 (struct mpv_handle*,char*,scalar_t__,TYPE_7__*) ; 
 int FUNC24 (struct mpv_handle*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC25 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC26 (char const*,char const*) ; 
 char* FUNC27 (char*,char*) ; 
 char* FUNC28 (void*,char*) ; 

__attribute__((used)) static char *FUNC29(struct mpv_handle *client, void *ta_parent,
                                  char *src)
{
    int rc;
    const char *cmd = NULL;
    struct mp_log *log = FUNC2(client);

    mpv_node msg_node;
    mpv_node reply_node = {.format = MPV_FORMAT_NODE_MAP, .u.list = NULL};
    mpv_node *reqid_node = NULL;

    rc = FUNC0(ta_parent, &msg_node, &src, 50);
    if (rc < 0) {
        FUNC3(log, "malformed JSON received: '%s'\n", src);
        rc = MPV_ERROR_INVALID_PARAMETER;
        goto error;
    }

    if (msg_node.format != MPV_FORMAT_NODE_MAP) {
        rc = MPV_ERROR_INVALID_PARAMETER;
        goto error;
    }

    reqid_node = FUNC25(&msg_node, "request_id");
    if (reqid_node && reqid_node->format != MPV_FORMAT_INT64) {
        FUNC4(log, "'request_id' must be an integer. Using other types is "
                "deprecated and will trigger an error in the future!\n");
    }

    mpv_node *cmd_node = FUNC25(&msg_node, "command");
    if (!cmd_node ||
        (cmd_node->format != MPV_FORMAT_NODE_ARRAY) ||
        !cmd_node->u.list->num)
    {
        rc = MPV_ERROR_INVALID_PARAMETER;
        goto error;
    }

    mpv_node *cmd_str_node = FUNC15(cmd_node, 0);
    if (!cmd_str_node || (cmd_str_node->format != MPV_FORMAT_STRING)) {
        rc = MPV_ERROR_INVALID_PARAMETER;
        goto error;
    }

    cmd = cmd_str_node->u.string;

    if (!FUNC26("client_name", cmd)) {
        const char *client_name = FUNC6(client);
        FUNC19(ta_parent, &reply_node, "data", client_name);
        rc = MPV_ERROR_SUCCESS;
    } else if (!FUNC26("get_time_us", cmd)) {
        int64_t time_us = FUNC14(client);
        FUNC17(ta_parent, &reply_node, "data", time_us);
        rc = MPV_ERROR_SUCCESS;
    } else if (!FUNC26("get_version", cmd)) {
        int64_t ver = FUNC5();
        FUNC17(ta_parent, &reply_node, "data", ver);
        rc = MPV_ERROR_SUCCESS;
    } else if (!FUNC26("get_property", cmd)) {
        mpv_node result_node;

        if (cmd_node->u.list->num != 2) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        if (cmd_node->u.list->values[1].format != MPV_FORMAT_STRING) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        rc = FUNC12(client, cmd_node->u.list->values[1].u.string,
                              MPV_FORMAT_NODE, &result_node);
        if (rc >= 0) {
            FUNC16(ta_parent, &reply_node, "data", &result_node);
            FUNC11(&result_node);
        }
    } else if (!FUNC26("get_property_string", cmd)) {
        if (cmd_node->u.list->num != 2) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        if (cmd_node->u.list->values[1].format != MPV_FORMAT_STRING) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        char *result = FUNC13(client,
                                        cmd_node->u.list->values[1].u.string);
        if (result) {
            FUNC19(ta_parent, &reply_node, "data", result);
            FUNC10(result);
        } else {
            FUNC18(ta_parent, &reply_node, "data");
        }
    } else if (!FUNC26("set_property", cmd) ||
        !FUNC26("set_property_string", cmd))
    {
        if (cmd_node->u.list->num != 3) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        if (cmd_node->u.list->values[1].format != MPV_FORMAT_STRING) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        rc = FUNC23(client, cmd_node->u.list->values[1].u.string,
                              MPV_FORMAT_NODE, &cmd_node->u.list->values[2]);
    } else if (!FUNC26("observe_property", cmd)) {
        if (cmd_node->u.list->num != 3) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        if (cmd_node->u.list->values[1].format != MPV_FORMAT_INT64) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        if (cmd_node->u.list->values[2].format != MPV_FORMAT_STRING) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        rc = FUNC20(client,
                                  cmd_node->u.list->values[1].u.int64,
                                  cmd_node->u.list->values[2].u.string,
                                  MPV_FORMAT_NODE);
    } else if (!FUNC26("observe_property_string", cmd)) {
        if (cmd_node->u.list->num != 3) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        if (cmd_node->u.list->values[1].format != MPV_FORMAT_INT64) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        if (cmd_node->u.list->values[2].format != MPV_FORMAT_STRING) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        rc = FUNC20(client,
                                  cmd_node->u.list->values[1].u.int64,
                                  cmd_node->u.list->values[2].u.string,
                                  MPV_FORMAT_STRING);
    } else if (!FUNC26("unobserve_property", cmd)) {
        if (cmd_node->u.list->num != 2) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        if (cmd_node->u.list->values[1].format != MPV_FORMAT_INT64) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        rc = FUNC24(client,
                                    cmd_node->u.list->values[1].u.int64);
    } else if (!FUNC26("request_log_messages", cmd)) {
        if (cmd_node->u.list->num != 2) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        if (cmd_node->u.list->values[1].format != MPV_FORMAT_STRING) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        rc = FUNC22(client,
                                      cmd_node->u.list->values[1].u.string);
    } else if (!FUNC26("enable_event", cmd) ||
               !FUNC26("disable_event", cmd))
    {
        bool enable = !FUNC26("enable_event", cmd);

        if (cmd_node->u.list->num != 2) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        if (cmd_node->u.list->values[1].format != MPV_FORMAT_STRING) {
            rc = MPV_ERROR_INVALID_PARAMETER;
            goto error;
        }

        char *name = cmd_node->u.list->values[1].u.string;
        if (FUNC26(name, "all") == 0) {
            for (int n = 0; n < 64; n++)
                FUNC21(client, n, enable);
            rc = MPV_ERROR_SUCCESS;
        } else {
            int event = -1;
            for (int n = 0; n < 64; n++) {
                const char *evname = FUNC9(n);
                if (evname && FUNC26(evname, name) == 0)
                    event = n;
            }
            if (event < 0) {
                rc = MPV_ERROR_INVALID_PARAMETER;
                goto error;
            }
            rc = FUNC21(client, event, enable);
        }
    } else {
        mpv_node result_node;

        rc = FUNC7(client, cmd_node, &result_node);
        if (rc >= 0)
            FUNC16(ta_parent, &reply_node, "data", &result_node);
    }

error:
    /* If the request contains a "request_id", copy it back into the response.
     * This makes it easier on the requester to match up the IPC results with
     * the original requests.
     */
    if (reqid_node) {
        FUNC16(ta_parent, &reply_node, "request_id", reqid_node);
    } else {
        FUNC17(ta_parent, &reply_node, "request_id", 0);
    }

    FUNC19(ta_parent, &reply_node, "error", FUNC8(rc));

    char *output = FUNC28(ta_parent, "");
    FUNC1(&output, &reply_node);
    output = FUNC27(output, "\n");

    return output;
}