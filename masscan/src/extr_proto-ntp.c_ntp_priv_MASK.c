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

/* Variables and functions */
 int /*<<< orphan*/  PROTO_NTP ; 
 int /*<<< orphan*/  FUNC0 (struct BannerOutput*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned int,struct BannerOutput*,unsigned int*) ; 
 int /*<<< orphan*/  request_codes ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC4(const unsigned char *px,
             unsigned length,
             struct BannerOutput *banout,
             unsigned *request_id)
{
    unsigned implementation = px[2];
    unsigned request_code = px[3];
    const char *request_string;
    
    switch (implementation) {
        case 0: FUNC0(banout, PROTO_NTP, "UNIV", 4); return;
        case 2: FUNC0(banout, PROTO_NTP, "XNTPD-OLD", 9); return;
        case 3: FUNC0(banout, PROTO_NTP, "XNTPD", 5); break;
        default:
            return;
    }
    
    request_string = FUNC3(request_codes, request_code);
    if (request_string) {
        FUNC0(banout, PROTO_NTP, " ", 1);
        FUNC0(banout, PROTO_NTP, request_string, FUNC2(request_string));
    }
    
    switch (request_code) {
        case 42:
            FUNC1(px, length, banout, request_id);
            break;
    }    
    
}