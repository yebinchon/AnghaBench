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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  SSL ;
typedef  TYPE_1__ SRTP_PROTECTION_PROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char const*,unsigned int) ; 
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int SSL_OP_NO_RENEGOTIATION ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned char const**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC22 (int,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  bio_s_out ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * keymatexportlabel ; 
 int keymatexportlen ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ s_brief ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC30(SSL *con)
{
    const char *str;
    X509 *peer;
    char buf[BUFSIZ];
#if !defined(OPENSSL_NO_NEXTPROTONEG)
    const unsigned char *next_proto_neg;
    unsigned next_proto_neg_len;
#endif
    unsigned char *exportedkeymat;
    int i;

    if (s_brief)
        FUNC25(con);

    FUNC6(bio_s_out, FUNC17(con));

    peer = FUNC13(con);
    if (peer != NULL) {
        FUNC3(bio_s_out, "Client certificate\n");
        FUNC7(bio_s_out, peer);
        FUNC23(bio_s_out, peer);
        FUNC21(peer);
        peer = NULL;
    }

    if (FUNC18(con, buf, sizeof(buf)) != NULL)
        FUNC3(bio_s_out, "Shared ciphers:%s\n", buf);
    str = FUNC8(FUNC11(con));
    FUNC28(bio_s_out, con);
#ifndef OPENSSL_NO_EC
    FUNC27(bio_s_out, con);
    FUNC26(bio_s_out, con, 0);
#endif
    FUNC24(bio_s_out, con);
    FUNC3(bio_s_out, "CIPHER is %s\n", (str != NULL) ? str : "(NONE)");

#if !defined(OPENSSL_NO_NEXTPROTONEG)
    FUNC10(con, &next_proto_neg, &next_proto_neg_len);
    if (next_proto_neg) {
        FUNC3(bio_s_out, "NEXTPROTO is ");
        FUNC4(bio_s_out, next_proto_neg, next_proto_neg_len);
        FUNC3(bio_s_out, "\n");
    }
#endif
#ifndef OPENSSL_NO_SRTP
    {
        SRTP_PROTECTION_PROFILE *srtp_profile
            = FUNC16(con);

        if (srtp_profile)
            FUNC3(bio_s_out, "SRTP Extension negotiated, profile=%s\n",
                       srtp_profile->name);
    }
#endif
    if (FUNC20(con))
        FUNC3(bio_s_out, "Reused session-id\n");
    FUNC3(bio_s_out, "Secure Renegotiation IS%s supported\n",
               FUNC15(con) ? "" : " NOT");
    if ((FUNC12(con) & SSL_OP_NO_RENEGOTIATION))
        FUNC3(bio_s_out, "Renegotiation is DISABLED\n");

    if (keymatexportlabel != NULL) {
        FUNC3(bio_s_out, "Keying material exporter:\n");
        FUNC3(bio_s_out, "    Label: '%s'\n", keymatexportlabel);
        FUNC3(bio_s_out, "    Length: %i bytes\n", keymatexportlen);
        exportedkeymat = FUNC22(keymatexportlen, "export key");
        if (!FUNC9(con, exportedkeymat,
                                        keymatexportlen,
                                        keymatexportlabel,
                                        FUNC29(keymatexportlabel),
                                        NULL, 0, 0)) {
            FUNC3(bio_s_out, "    Error\n");
        } else {
            FUNC3(bio_s_out, "    Keying material: ");
            for (i = 0; i < keymatexportlen; i++)
                FUNC3(bio_s_out, "%02X", exportedkeymat[i]);
            FUNC3(bio_s_out, "\n");
        }
        FUNC5(exportedkeymat);
    }
#ifndef OPENSSL_NO_KTLS
    if (FUNC2(FUNC19(con)))
        FUNC3(bio_err, "Using Kernel TLS for sending\n");
    if (FUNC1(FUNC14(con)))
        FUNC3(bio_err, "Using Kernel TLS for receiving\n");
#endif

    (void)FUNC0(bio_s_out);
}