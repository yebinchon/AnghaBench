#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int code; TYPE_2__* data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_5__ {int /*<<< orphan*/  contenttype; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_TEXT_PLAIN ; 
 int HTTP_RESP_FORBIDDEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 

inline int FUNC2(struct web_client *w) {
    w->response.data->contenttype = CT_TEXT_PLAIN;
    FUNC0(w->response.data);
    FUNC1(w->response.data, "You are not allowed to access this resource.");
    w->response.code = HTTP_RESP_FORBIDDEN;
    return HTTP_RESP_FORBIDDEN;
}