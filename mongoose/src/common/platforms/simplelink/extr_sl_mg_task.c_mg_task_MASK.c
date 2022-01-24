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
struct mg_q_msg {int type; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* cb ) (struct mg_mgr*,int /*<<< orphan*/ ) ;} ;
struct mg_mgr {int dummy; } ;
typedef  int /*<<< orphan*/  (* mg_init_cb ) (struct mg_mgr*) ;

/* Variables and functions */
#define  MG_Q_MSG_CB 128 
 scalar_t__ OSI_OK ; 
 int /*<<< orphan*/  FUNC0 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct mg_q_msg*,int) ; 
 int /*<<< orphan*/  s_mg_q ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *arg) {
  struct mg_mgr mgr;
  mg_init_cb mg_init = (mg_init_cb) arg;
  FUNC0(&mgr, NULL);
  mg_init(&mgr);
  while (1) {
    struct mg_q_msg msg;
    FUNC1(&mgr, 1);
    if (FUNC2(&s_mg_q, &msg, 1) != OSI_OK) continue;
    switch (msg.type) {
      case MG_Q_MSG_CB: {
        msg.cb(&mgr, msg.arg);
      }
    }
  }
}