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
struct TYPE_3__ {char* host; char* mailbox; struct TYPE_3__* next; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  ERRHOST ; 
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  PHP_IMAP_BAD_DEST ; 
 int /*<<< orphan*/  PHP_IMAP_CLEAN ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,char**,char*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,char*,char*) ; 
 scalar_t__ FUNC11 (size_t,int,int) ; 
 char* FUNC12 (char*,size_t,int,size_t) ; 
 scalar_t__ FUNC13 (char*,size_t,char*,char*,char*) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,size_t) ; 
 size_t FUNC16 (char*) ; 

int FUNC17(char *to, char *subject, char *message, char *headers, char *cc, char *bcc, char* rpath)
{
#ifdef PHP_WIN32
	int tsm_err;
#else
	FILE *sendmail;
	int ret;
#endif

#ifdef PHP_WIN32
	char *tempMailTo;
	char *tsm_errmsg = NULL;
	ADDRESS *addr;
	char *bufferTo = NULL, *bufferCc = NULL, *bufferBcc = NULL, *bufferHeader = NULL;
	size_t offset, bufferLen = 0;
	size_t bt_len;

	if (headers) {
		bufferLen += strlen(headers);
	}
	if (to) {
		bufferLen += strlen(to) + 6;
	}
	if (cc) {
		bufferLen += strlen(cc) + 6;
	}

#define PHP_IMAP_CLEAN	if (bufferTo) efree(bufferTo); if (bufferCc) efree(bufferCc); if (bufferBcc) efree(bufferBcc); if (bufferHeader) efree(bufferHeader);
#define PHP_IMAP_BAD_DEST PHP_IMAP_CLEAN; efree(tempMailTo); return (BAD_MSG_DESTINATION);

	bufferHeader = (char *)safe_emalloc(bufferLen, 1, 1);
	memset(bufferHeader, 0, bufferLen);
	if (to && *to) {
		strlcat(bufferHeader, "To: ", bufferLen + 1);
		strlcat(bufferHeader, to, bufferLen + 1);
		strlcat(bufferHeader, "\r\n", bufferLen + 1);
		tempMailTo = estrdup(to);
		bt_len = strlen(to);
		bufferTo = (char *)safe_emalloc(bt_len, 1, 1);
		bt_len++;
		offset = 0;
		addr = NULL;
		rfc822_parse_adrlist(&addr, tempMailTo, "NO HOST");
		while (addr) {
			if (addr->host == NULL || strcmp(addr->host, ERRHOST) == 0) {
				PHP_IMAP_BAD_DEST;
			} else {
				bufferTo = safe_erealloc(bufferTo, bt_len, 1, strlen(addr->mailbox));
				bt_len += strlen(addr->mailbox);
				bufferTo = safe_erealloc(bufferTo, bt_len, 1, strlen(addr->host));
				bt_len += strlen(addr->host);
				offset += slprintf(bufferTo + offset, bt_len - offset, "%s@%s,", addr->mailbox, addr->host);
			}
			addr = addr->next;
		}
		efree(tempMailTo);
		if (offset>0) {
			bufferTo[offset-1] = 0;
		}
	}

	if (cc && *cc) {
		strlcat(bufferHeader, "Cc: ", bufferLen + 1);
		strlcat(bufferHeader, cc, bufferLen + 1);
		strlcat(bufferHeader, "\r\n", bufferLen + 1);
		tempMailTo = estrdup(cc);
		bt_len = strlen(cc);
		bufferCc = (char *)safe_emalloc(bt_len, 1, 1);
		bt_len++;
		offset = 0;
		addr = NULL;
		rfc822_parse_adrlist(&addr, tempMailTo, "NO HOST");
		while (addr) {
			if (addr->host == NULL || strcmp(addr->host, ERRHOST) == 0) {
				PHP_IMAP_BAD_DEST;
			} else {
				bufferCc = safe_erealloc(bufferCc, bt_len, 1, strlen(addr->mailbox));
				bt_len += strlen(addr->mailbox);
				bufferCc = safe_erealloc(bufferCc, bt_len, 1, strlen(addr->host));
				bt_len += strlen(addr->host);
				offset += slprintf(bufferCc + offset, bt_len - offset, "%s@%s,", addr->mailbox, addr->host);
			}
			addr = addr->next;
		}
		efree(tempMailTo);
		if (offset>0) {
			bufferCc[offset-1] = 0;
		}
	}

	if (bcc && *bcc) {
		tempMailTo = estrdup(bcc);
		bt_len = strlen(bcc);
		bufferBcc = (char *)safe_emalloc(bt_len, 1, 1);
		bt_len++;
		offset = 0;
		addr = NULL;
		rfc822_parse_adrlist(&addr, tempMailTo, "NO HOST");
		while (addr) {
			if (addr->host == NULL || strcmp(addr->host, ERRHOST) == 0) {
				PHP_IMAP_BAD_DEST;
			} else {
				bufferBcc = safe_erealloc(bufferBcc, bt_len, 1, strlen(addr->mailbox));
				bt_len += strlen(addr->mailbox);
				bufferBcc = safe_erealloc(bufferBcc, bt_len, 1, strlen(addr->host));
				bt_len += strlen(addr->host);
				offset += slprintf(bufferBcc + offset, bt_len - offset, "%s@%s,", addr->mailbox, addr->host);
			}
			addr = addr->next;
		}
		efree(tempMailTo);
		if (offset>0) {
			bufferBcc[offset-1] = 0;
		}
	}

	if (headers && *headers) {
		strlcat(bufferHeader, headers, bufferLen + 1);
	}

	if (TSendMail(INI_STR("SMTP"), &tsm_err, &tsm_errmsg, bufferHeader, subject, bufferTo, message, bufferCc, bufferBcc, rpath) != SUCCESS) {
		if (tsm_errmsg) {
			php_error_docref(NULL, E_WARNING, "%s", tsm_errmsg);
			efree(tsm_errmsg);
		} else {
			php_error_docref(NULL, E_WARNING, "%s", GetSMErrorText(tsm_err));
		}
		PHP_IMAP_CLEAN;
		return 0;
	}
	PHP_IMAP_CLEAN;
#else
	if (!FUNC1("sendmail_path")) {
		return 0;
	}
	sendmail = FUNC9(FUNC1("sendmail_path"), "w");
	if (sendmail) {
		if (rpath && rpath[0]) FUNC5(sendmail, "From: %s\n", rpath);
		FUNC5(sendmail, "To: %s\n", to);
		if (cc && cc[0]) FUNC5(sendmail, "Cc: %s\n", cc);
		if (bcc && bcc[0]) FUNC5(sendmail, "Bcc: %s\n", bcc);
		FUNC5(sendmail, "Subject: %s\n", subject);
		if (headers != NULL) {
			FUNC5(sendmail, "%s\n", headers);
		}
		FUNC5(sendmail, "\n%s\n", message);
		ret = FUNC7(sendmail);

		return ret != -1;
	} else {
		FUNC8(NULL, E_WARNING, "Could not execute mail delivery program");
		return 0;
	}
#endif
	return 1;
}