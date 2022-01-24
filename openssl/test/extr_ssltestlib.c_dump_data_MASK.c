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

/* Variables and functions */
 int DTLS1_HM_HEADER_LENGTH ; 
 int DTLS1_RT_HEADER_LENGTH ; 
 size_t MSG_FRAG_LEN_HI ; 
 size_t MSG_FRAG_LEN_LO ; 
 size_t MSG_FRAG_LEN_MID ; 
 size_t MSG_FRAG_OFF_HI ; 
 size_t MSG_FRAG_OFF_LO ; 
 size_t MSG_FRAG_OFF_MID ; 
 size_t MSG_LEN_HI ; 
 size_t MSG_LEN_LO ; 
 size_t MSG_LEN_MID ; 
 size_t MSG_SEQ_HI ; 
 size_t MSG_SEQ_LO ; 
 size_t MSG_TYPE ; 
 size_t RECORD_CONTENT_TYPE ; 
 size_t RECORD_EPOCH_HI ; 
 size_t RECORD_EPOCH_LO ; 
 size_t RECORD_LEN_HI ; 
 size_t RECORD_LEN_LO ; 
 int RECORD_SEQUENCE_END ; 
 int RECORD_SEQUENCE_START ; 
 size_t RECORD_VERSION_HI ; 
 size_t RECORD_VERSION_LO ; 
 int SSL3_RT_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(const char *data, int len)
{
    int rem, i, content, reclen, msglen, fragoff, fraglen, epoch;
    unsigned char *rec;

    FUNC1("---- START OF PACKET ----\n");

    rem = len;
    rec = (unsigned char *)data;

    while (rem > 0) {
        if (rem != len)
            FUNC1("*\n");
        FUNC1("*---- START OF RECORD ----\n");
        if (rem < DTLS1_RT_HEADER_LENGTH) {
            FUNC1("*---- RECORD TRUNCATED ----\n");
            break;
        }
        content = rec[RECORD_CONTENT_TYPE];
        FUNC1("** Record Content-type: %d\n", content);
        FUNC1("** Record Version: %02x%02x\n",
               rec[RECORD_VERSION_HI], rec[RECORD_VERSION_LO]);
        epoch = (rec[RECORD_EPOCH_HI] << 8) | rec[RECORD_EPOCH_LO];
        FUNC1("** Record Epoch: %d\n", epoch);
        FUNC1("** Record Sequence: ");
        for (i = RECORD_SEQUENCE_START; i <= RECORD_SEQUENCE_END; i++)
            FUNC1("%02x", rec[i]);
        reclen = (rec[RECORD_LEN_HI] << 8) | rec[RECORD_LEN_LO];
        FUNC1("\n** Record Length: %d\n", reclen);

        /* Now look at message */
        rec += DTLS1_RT_HEADER_LENGTH;
        rem -= DTLS1_RT_HEADER_LENGTH;
        if (content == SSL3_RT_HANDSHAKE) {
            FUNC1("**---- START OF HANDSHAKE MESSAGE FRAGMENT ----\n");
            if (epoch > 0) {
                FUNC1("**---- HANDSHAKE MESSAGE FRAGMENT ENCRYPTED ----\n");
            } else if (rem < DTLS1_HM_HEADER_LENGTH
                    || reclen < DTLS1_HM_HEADER_LENGTH) {
                FUNC1("**---- HANDSHAKE MESSAGE FRAGMENT TRUNCATED ----\n");
            } else {
                FUNC1("*** Message Type: %d\n", rec[MSG_TYPE]);
                msglen = (rec[MSG_LEN_HI] << 16) | (rec[MSG_LEN_MID] << 8)
                         | rec[MSG_LEN_LO];
                FUNC1("*** Message Length: %d\n", msglen);
                FUNC1("*** Message sequence: %d\n",
                       (rec[MSG_SEQ_HI] << 8) | rec[MSG_SEQ_LO]);
                fragoff = (rec[MSG_FRAG_OFF_HI] << 16)
                          | (rec[MSG_FRAG_OFF_MID] << 8)
                          | rec[MSG_FRAG_OFF_LO];
                FUNC1("*** Message Fragment offset: %d\n", fragoff);
                fraglen = (rec[MSG_FRAG_LEN_HI] << 16)
                          | (rec[MSG_FRAG_LEN_MID] << 8)
                          | rec[MSG_FRAG_LEN_LO];
                FUNC1("*** Message Fragment len: %d\n", fraglen);
                if (fragoff + fraglen > msglen)
                    FUNC1("***---- HANDSHAKE MESSAGE FRAGMENT INVALID ----\n");
                else if (reclen < fraglen)
                    FUNC1("**---- HANDSHAKE MESSAGE FRAGMENT TRUNCATED ----\n");
                else
                    FUNC1("**---- END OF HANDSHAKE MESSAGE FRAGMENT ----\n");
            }
        }
        if (rem < reclen) {
            FUNC1("*---- RECORD TRUNCATED ----\n");
            rem = 0;
        } else {
            rec += reclen;
            rem -= reclen;
            FUNC1("*---- END OF RECORD ----\n");
        }
    }
    FUNC1("---- END OF PACKET ----\n\n");
    FUNC0(stdout);
}