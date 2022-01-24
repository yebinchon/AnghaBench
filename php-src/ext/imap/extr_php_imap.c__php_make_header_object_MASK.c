#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_3__ {char* remail; char* subject; char* in_reply_to; char* message_id; char* newsgroups; char* followup_to; char* references; scalar_t__ return_path; scalar_t__ sender; scalar_t__ reply_to; scalar_t__ bcc; scalar_t__ cc; scalar_t__ from; scalar_t__ to; scalar_t__ date; } ;
typedef  TYPE_1__ ENVELOPE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(zval *myzvalue, ENVELOPE *en)
{
	zval paddress;
	zend_string *fulladdress=NULL;

	FUNC5(myzvalue);

	if (en->remail) FUNC3(myzvalue, "remail", en->remail);
	if (en->date) FUNC3(myzvalue, "date", (char*)en->date);
	if (en->date) FUNC3(myzvalue, "Date", (char*)en->date);
	if (en->subject) FUNC3(myzvalue, "subject", en->subject);
	if (en->subject) FUNC3(myzvalue, "Subject", en->subject);
	if (en->in_reply_to) FUNC3(myzvalue, "in_reply_to", en->in_reply_to);
	if (en->message_id) FUNC3(myzvalue, "message_id", en->message_id);
	if (en->newsgroups) FUNC3(myzvalue, "newsgroups", en->newsgroups);
	if (en->followup_to) FUNC3(myzvalue, "followup_to", en->followup_to);
	if (en->references) FUNC3(myzvalue, "references", en->references);

	if (en->to) {
		FUNC4(&paddress);
		fulladdress = FUNC0(en->to, &paddress);
		if (fulladdress) {
			FUNC2(myzvalue, "toaddress", fulladdress);
		}
		FUNC1(myzvalue, "to", &paddress);
	}

	if (en->from) {
		FUNC4(&paddress);
		fulladdress = FUNC0(en->from, &paddress);
		if (fulladdress) {
			FUNC2(myzvalue, "fromaddress", fulladdress);
		}
		FUNC1(myzvalue, "from", &paddress);
	}

	if (en->cc) {
		FUNC4(&paddress);
		fulladdress = FUNC0(en->cc, &paddress);
		if (fulladdress) {
			FUNC2(myzvalue, "ccaddress", fulladdress);
		}
		FUNC1(myzvalue, "cc", &paddress);
	}

	if (en->bcc) {
		FUNC4(&paddress);
		fulladdress = FUNC0(en->bcc, &paddress);
		if (fulladdress) {
			FUNC2(myzvalue, "bccaddress", fulladdress);
		}
		FUNC1(myzvalue, "bcc", &paddress);
	}

	if (en->reply_to) {
		FUNC4(&paddress);
		fulladdress = FUNC0(en->reply_to, &paddress);
		if (fulladdress) {
			FUNC2(myzvalue, "reply_toaddress", fulladdress);
		}
		FUNC1(myzvalue, "reply_to", &paddress);
	}

	if (en->sender) {
		FUNC4(&paddress);
		fulladdress = FUNC0(en->sender, &paddress);
		if (fulladdress) {
			FUNC2(myzvalue, "senderaddress", fulladdress);
		}
		FUNC1(myzvalue, "sender", &paddress);
	}

	if (en->return_path) {
		FUNC4(&paddress);
		fulladdress = FUNC0(en->return_path, &paddress);
		if (fulladdress) {
			FUNC2(myzvalue, "return_pathaddress", fulladdress);
		}
		FUNC1(myzvalue, "return_path", &paddress);
	}
}