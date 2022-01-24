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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t*,int,char*) ; 

int
FUNC2(void)
{
    unsigned char buf[1024];
    size_t buf_length;

    buf_length = 0;
    FUNC1(buf, &buf_length, sizeof(buf), "\"\\t\\n\\r\\x1f\\123\"");
    if (FUNC0(buf, "\t\n\r\x1f\123", 5) != 0)
        return 1;
    return 0;

        /*
        "OPTIONS sip:carol@chicago.com SIP/2.0\r\n"
        "Via: SIP/2.0/UDP pc33.atlanta.com;branch=z9hG4bKhjhs8ass877\r\n"
        "Max-Forwards: 70\r\n"
        "To: <sip:carol@chicago.com>\r\n"
        "From: Alice <sip:alice@atlanta.com>;tag=1928301774\r\n"
        "Call-ID: a84b4c76e66710\r\n"
        "CSeq: 63104 OPTIONS\r\n"
        "Contact: <sip:alice@pc33.atlanta.com>\r\n"
        "Accept: application/sdp\r\n"
        "Content-Length: 0\r\n"
        */

}