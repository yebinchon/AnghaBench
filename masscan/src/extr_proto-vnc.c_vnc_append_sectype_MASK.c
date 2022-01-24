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
struct BannerOutput {int dummy; } ;
typedef  int /*<<< orphan*/  foo ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_LEN ; 
 int /*<<< orphan*/  PROTO_VNC_RFB ; 
 int /*<<< orphan*/  FUNC0 (struct BannerOutput*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct BannerOutput *banout, unsigned sectype)
{
    char foo[16];

    /*
     http://www.iana.org/assignments/rfb/rfb.xml
    Value 	Name 	Reference 
    0	Invalid	[RFC6143]
    1	None	[RFC6143]
    2	VNC Authentication	[RFC6143]
    3-15	RealVNC	historic assignment
    16	Tight	historic assignment
    17	Ultra	historic assignment
    18	TLS	historic assignment
    19	VeNCrypt	historic assignment
    20	GTK-VNC SASL	historic assignment
    21	MD5 hash authentication	historic assignment
    22	Colin Dean xvp	historic assignment
    23-29	Unassigned	
    30-35	Apple Inc.	[Michael_Stein]
    36-127	Unassigned	
    128-255	RealVNC	historic assignment
    */
    switch (sectype) {
        case 0:
            FUNC0(banout, PROTO_VNC_RFB, "invalid", AUTO_LEN); 
            break;
        case 1:
            FUNC0(banout, PROTO_VNC_RFB, "none", AUTO_LEN); 
            break;
        case 2:
            FUNC0(banout, PROTO_VNC_RFB, "VNC-chap", AUTO_LEN); 
            break;
        case 5:
            FUNC0(banout, PROTO_VNC_RFB, "RA2", AUTO_LEN); 
            break;
        case 6:
            FUNC0(banout, PROTO_VNC_RFB, "RA2ne", AUTO_LEN); 
            break;
        case 7:
            FUNC0(banout, PROTO_VNC_RFB, "SSPI", AUTO_LEN); 
            break;
        case 8:
            FUNC0(banout, PROTO_VNC_RFB, "SSPIne", AUTO_LEN); 
            break;
        case 16:
            FUNC0(banout, PROTO_VNC_RFB, "Tight", AUTO_LEN); 
            break;
        case 17:
            FUNC0(banout, PROTO_VNC_RFB, "Ultra", AUTO_LEN); 
            break;
        case 18:
            FUNC0(banout, PROTO_VNC_RFB, "TLS", AUTO_LEN); 
            break;
        case 19:
            FUNC0(banout, PROTO_VNC_RFB, "VeNCrypt", AUTO_LEN); 
            break;
        case 20:
            FUNC0(banout, PROTO_VNC_RFB, "GTK-VNC-SASL", AUTO_LEN); 
            break;
        case 21:
            FUNC0(banout, PROTO_VNC_RFB, "MD5", AUTO_LEN); 
            break;
        case 22:
            FUNC0(banout, PROTO_VNC_RFB, "Colin-Dean-xvp", AUTO_LEN); 
            break;
        case 30:
            FUNC0(banout, PROTO_VNC_RFB, "Apple30", AUTO_LEN); 
            break;
        case 35:
            FUNC0(banout, PROTO_VNC_RFB, "Apple35", AUTO_LEN); 
            break;
        default:
            FUNC1(foo, sizeof(foo), "%u", sectype);
            FUNC0(banout, PROTO_VNC_RFB, foo, AUTO_LEN); 
            break;
    }
}