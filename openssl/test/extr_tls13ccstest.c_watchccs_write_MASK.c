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
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 unsigned int SSL3_MT_CLIENT_HELLO ; 
 unsigned int SSL3_MT_SERVER_HELLO ; 
 unsigned int SSL3_RT_APPLICATION_DATA ; 
 unsigned int SSL3_RT_CHANGE_CIPHER_SPEC ; 
 unsigned int SSL3_RT_HANDSHAKE ; 
 unsigned int TLS1_2_VERSION ; 
 unsigned int TLS1_VERSION ; 
 int badccs ; 
 int badsessid ; 
 int badvers ; 
 int cappdataseen ; 
 int ccsaftersh ; 
 int ccsbeforesh ; 
 int chseen ; 
 int /*<<< orphan*/  chsessid ; 
 scalar_t__ chsessidlen ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * s_to_c_fbio ; 
 int sappdataseen ; 
 int sccsseen ; 
 int shseen ; 

__attribute__((used)) static int FUNC16(BIO *bio, const char *in, int inl)
{
    int ret = 0;
    BIO *next = FUNC1(bio);
    PACKET pkt, msg, msgbody, sessionid;
    unsigned int rectype, recvers, msgtype, expectedrecvers;

    if (inl <= 0)
        return 0;
    if (next == NULL)
        return 0;

    FUNC0(bio);

    if (!FUNC5(&pkt, (const unsigned char *)in, inl))
        return 0;

    /* We assume that we always write complete records each time */
    while (FUNC14(&pkt)) {
        if (!FUNC9(&pkt, &rectype)
                || !FUNC13(&pkt, &recvers)
                || !FUNC11(&pkt, &msg))
            return 0;

        expectedrecvers = TLS1_2_VERSION;

        if (rectype == SSL3_RT_HANDSHAKE) {
            if (!FUNC9(&msg, &msgtype)
                    || !FUNC12(&msg, &msgbody))
                return 0;
            if (msgtype == SSL3_MT_CLIENT_HELLO) {
                chseen++;

                /*
                 * Skip legacy_version (2 bytes) and Random (32 bytes) to read
                 * session_id.
                 */
                if (!FUNC8(&msgbody, 34)
                        || !FUNC10(&msgbody, &sessionid))
                    return 0;

                if (chseen == 1) {
                    expectedrecvers = TLS1_VERSION;

                    /* Save the session id for later */
                    chsessidlen = FUNC14(&sessionid);
                    if (!FUNC6(&sessionid, chsessid, chsessidlen))
                        return 0;
                } else {
                    /*
                     * Check the session id for the second ClientHello is the
                     * same as the first one.
                     */
                    if (FUNC14(&sessionid) != chsessidlen
                            || (chsessidlen > 0
                                && FUNC15(chsessid, FUNC7(&sessionid),
                                          chsessidlen) != 0))
                        badsessid = 1;
                }
            } else if (msgtype == SSL3_MT_SERVER_HELLO) {
                shseen++;
                /*
                 * Skip legacy_version (2 bytes) and Random (32 bytes) to read
                 * session_id.
                 */
                if (!FUNC8(&msgbody, 34)
                        || !FUNC10(&msgbody, &sessionid))
                    return 0;

                /*
                 * Check the session id is the same as the one in the
                 * ClientHello
                 */
                if (FUNC14(&sessionid) != chsessidlen
                        || (chsessidlen > 0
                            && FUNC15(chsessid, FUNC7(&sessionid),
                                      chsessidlen) != 0))
                    badsessid = 1;
            }
        } else if (rectype == SSL3_RT_CHANGE_CIPHER_SPEC) {
            if (bio == s_to_c_fbio) {
                /*
                 * Server writing. We shouldn't have written any app data
                 * yet, and we should have seen both the ClientHello and the
                 * ServerHello
                 */
                if (!sappdataseen
                        && chseen == 1
                        && shseen == 1
                        && !sccsseen)
                    sccsseen = 1;
                else
                    badccs = 1;
            } else if (!cappdataseen) {
                /*
                 * Client writing. We shouldn't have written any app data
                 * yet, and we should have seen the ClientHello
                 */
                if (shseen == 1 && !ccsaftersh)
                    ccsaftersh = 1;
                else if (shseen == 0 && !ccsbeforesh)
                    ccsbeforesh = 1;
                else
                    badccs = 1;
            } else {
                badccs = 1;
            }
        } else if(rectype == SSL3_RT_APPLICATION_DATA) {
            if (bio == s_to_c_fbio)
                sappdataseen = 1;
            else
                cappdataseen = 1;
        }
        if (recvers != expectedrecvers)
            badvers = 1;
    }

    ret = FUNC4(next, in, inl);
    if (ret <= 0 && FUNC3(next))
        FUNC2(bio);

    return ret;
}