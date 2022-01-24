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
typedef  int /*<<< orphan*/  pkt5 ;
typedef  int /*<<< orphan*/  pkt4 ;
typedef  int /*<<< orphan*/  pkt3 ;
typedef  int /*<<< orphan*/  pkt2 ;
typedef  int /*<<< orphan*/  pkt ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ CLIENT_VERSION_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ SSL3_HM_HEADER_LENGTH ; 
 scalar_t__ SSL3_RANDOM_SIZE ; 
 scalar_t__ SSL3_RT_HEADER_LENGTH ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_MAXLEN_host_name ; 
 int /*<<< orphan*/  TLSEXT_NAMETYPE_host_name ; 
 unsigned int TLSEXT_TYPE_server_name ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(BIO *bio, char **sni)
{
    long len;
    unsigned char *data;
    PACKET pkt, pkt2, pkt3, pkt4, pkt5;
    unsigned int servname_type = 0, type = 0;
    int ret = 0;

    FUNC16(&pkt, 0, sizeof(pkt));
    FUNC16(&pkt2, 0, sizeof(pkt2));
    FUNC16(&pkt3, 0, sizeof(pkt3));
    FUNC16(&pkt4, 0, sizeof(pkt4));
    FUNC16(&pkt5, 0, sizeof(pkt5));

    len = FUNC0(bio, (char **)&data);
    if (!FUNC12(FUNC2(&pkt, data, len))
               /* Skip the record header */
            || !FUNC4(&pkt, SSL3_RT_HEADER_LENGTH)
               /* Skip the handshake message header */
            || !FUNC12(FUNC4(&pkt, SSL3_HM_HEADER_LENGTH))
               /* Skip client version and random */
            || !FUNC12(FUNC4(&pkt, CLIENT_VERSION_LEN
                                               + SSL3_RANDOM_SIZE))
               /* Skip session id */
            || !FUNC12(FUNC6(&pkt, &pkt2))
               /* Skip ciphers */
            || !FUNC12(FUNC7(&pkt, &pkt2))
               /* Skip compression */
            || !FUNC12(FUNC6(&pkt, &pkt2))
               /* Extensions len */
            || !FUNC12(FUNC1(&pkt, &pkt2)))
        goto end;

    /* Loop through all extensions for SNI */
    while (FUNC9(&pkt2)) {
        if (!FUNC12(FUNC8(&pkt2, &type))
                || !FUNC12(FUNC7(&pkt2, &pkt3)))
            goto end;
        if (type == TLSEXT_TYPE_server_name) {
            if (!FUNC12(FUNC7(&pkt3, &pkt4))
                    || !FUNC15(FUNC9(&pkt4), 0)
                    || !FUNC12(FUNC5(&pkt4, &servname_type))
                    || !FUNC13(servname_type, TLSEXT_NAMETYPE_host_name)
                    || !FUNC12(FUNC7(&pkt4, &pkt5))
                    || !FUNC14(FUNC9(&pkt5), TLSEXT_MAXLEN_host_name)
                    || !FUNC11(FUNC3(&pkt5))
                    || !FUNC12(FUNC10(&pkt5, sni)))
                goto end;
            ret = 1;
            goto end;
        }
    }
end:
    return ret;
}