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
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ TLS1_3_VERSION ; 
 int /*<<< orphan*/  bio_c_out ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * sess_out ; 

__attribute__((used)) static int FUNC6(SSL *s, SSL_SESSION *sess)
{

    if (sess_out != NULL) {
        BIO *stmp = FUNC1(sess_out, "w");

        if (stmp == NULL) {
            FUNC2(bio_err, "Error writing session file %s\n", sess_out);
        } else {
            FUNC3(stmp, sess);
            FUNC0(stmp);
        }
    }

    /*
     * Session data gets dumped on connection for TLSv1.2 and below, and on
     * arrival of the NewSessionTicket for TLSv1.3.
     */
    if (FUNC5(s) == TLS1_3_VERSION) {
        FUNC2(bio_c_out,
                   "---\nPost-Handshake New Session Ticket arrived:\n");
        FUNC4(bio_c_out, sess);
        FUNC2(bio_c_out, "---\n");
    }

    /*
     * We always return a "fail" response so that the session gets freed again
     * because we haven't used the reference.
     */
    return 0;
}