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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  mp_print_t ;

/* Variables and functions */
 unsigned int NETUTILS_TRACE_IS_TX ; 
 unsigned int NETUTILS_TRACE_NEWLINE ; 
 unsigned int NETUTILS_TRACE_PAYLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,int const*) ; 
 char* FUNC1 (int const) ; 
 void* FUNC2 (int const*) ; 
 int FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*,...) ; 

void FUNC6(const mp_print_t *print, size_t len, const uint8_t *buf, unsigned int flags) {
    FUNC5(print, "[% 8d] ETH%cX len=%u", FUNC4(), flags & NETUTILS_TRACE_IS_TX ? 'T' : 'R', len);
    FUNC5(print, " dst=%02x:%02x:%02x:%02x:%02x:%02x", buf[0], buf[1], buf[2], buf[3], buf[4], buf[5]);
    FUNC5(print, " src=%02x:%02x:%02x:%02x:%02x:%02x", buf[6], buf[7], buf[8], buf[9], buf[10], buf[11]);

    const char *ethertype = FUNC1(buf[12] << 8 | buf[13]);
    if (ethertype) {
        FUNC5(print, " type=%s", ethertype);
    } else {
        FUNC5(print, " type=0x%04x", buf[12] << 8 | buf[13]);
    }
    if (len > 14) {
        len -= 14;
        buf += 14;
        if (buf[-2] == 0x08 && buf[-1] == 0x00 && buf[0] == 0x45) {
            // IPv4 packet
            len = FUNC2(buf + 2);
            FUNC5(print, " srcip=%u.%u.%u.%u dstip=%u.%u.%u.%u",
                buf[12], buf[13], buf[14], buf[15],
                buf[16], buf[17], buf[18], buf[19]);
            uint8_t prot = buf[9];
            buf += 20;
            len -= 20;
            if (prot == 6) {
                // TCP packet
                uint16_t srcport = FUNC2(buf);
                uint16_t dstport = FUNC2(buf + 2);
                uint32_t seqnum = FUNC3(buf + 4);
                uint32_t acknum = FUNC3(buf + 8);
                uint16_t dataoff_flags = FUNC2(buf + 12);
                uint16_t winsz = FUNC2(buf + 14);
                FUNC5(print, " TCP srcport=%u dstport=%u seqnum=%u acknum=%u dataoff=%u flags=%x winsz=%u",
                    srcport, dstport, (unsigned)seqnum, (unsigned)acknum, dataoff_flags >> 12, dataoff_flags & 0x1ff, winsz);
                buf += 20;
                len -= 20;
                if (dataoff_flags >> 12 > 5) {
                    FUNC5(print, " opts=");
                    size_t opts_len = ((dataoff_flags >> 12) - 5) * 4;
                    FUNC0(print, opts_len, buf);
                    buf += opts_len;
                    len -= opts_len;
                }
            } else if (prot == 17) {
                // UDP packet
                uint16_t srcport = FUNC2(buf);
                uint16_t dstport = FUNC2(buf + 2);
                FUNC5(print, " UDP srcport=%u dstport=%u", srcport, dstport);
                len = FUNC2(buf + 4);
                buf += 8;
                if ((srcport == 67 && dstport == 68) || (srcport == 68 && dstport == 67)) {
                    // DHCP
                    if (srcport == 67) {
                        FUNC5(print, " DHCPS");
                    } else {
                        FUNC5(print, " DHCPC");
                    }
                    FUNC0(print, 12 + 16 + 16 + 64, buf);
                    size_t n = 12 + 16 + 16 + 64 + 128;
                    len -= n;
                    buf += n;
                    FUNC5(print, " opts:");
                    switch (buf[6]) {
                        case 1: FUNC5(print, " DISCOVER"); break;
                        case 2: FUNC5(print, " OFFER"); break;
                        case 3: FUNC5(print, " REQUEST"); break;
                        case 4: FUNC5(print, " DECLINE"); break;
                        case 5: FUNC5(print, " ACK"); break;
                        case 6: FUNC5(print, " NACK"); break;
                        case 7: FUNC5(print, " RELEASE"); break;
                        case 8: FUNC5(print, " INFORM"); break;
                    }
                }
            } else {
                // Non-UDP packet
                FUNC5(print, " prot=%u", prot);
            }
        } else if (buf[-2] == 0x86 && buf[-1] == 0xdd && (buf[0] >> 4) == 6) {
            // IPv6 packet
            uint32_t h = FUNC3(buf);
            uint16_t l = FUNC2(buf + 4);
            FUNC5(print, " tclass=%u flow=%u len=%u nexthdr=%u hoplimit=%u", (unsigned)((h >> 20) & 0xff), (unsigned)(h & 0xfffff), l, buf[6], buf[7]);
            FUNC5(print, " srcip=");
            FUNC0(print, 16, buf + 8);
            FUNC5(print, " dstip=");
            FUNC0(print, 16, buf + 24);
            buf += 40;
            len -= 40;
        }
        if (flags & NETUTILS_TRACE_PAYLOAD) {
            FUNC5(print, " data=");
            FUNC0(print, len, buf);
        }
    }
    if (flags & NETUTILS_TRACE_NEWLINE) {
        FUNC5(print, "\n");
    }
}