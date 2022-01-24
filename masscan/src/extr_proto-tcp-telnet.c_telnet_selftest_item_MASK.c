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
struct ProtocolState {int dummy; } ;
struct InteractiveData {int dummy; } ;
struct BannerOutput {int dummy; } ;
struct Banner1 {int dummy; } ;
typedef  int /*<<< orphan*/  pstate ;

/* Variables and functions */
 int /*<<< orphan*/  PROTO_TELNET ; 
 struct Banner1* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct Banner1*) ; 
 int /*<<< orphan*/  FUNC2 (struct BannerOutput*) ; 
 int FUNC3 (struct BannerOutput*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC5 (struct ProtocolState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct Banner1*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,int /*<<< orphan*/ ,struct BannerOutput*,struct InteractiveData*) ; 

__attribute__((used)) static int
FUNC9(const char *input, const char *output)
{
    struct Banner1 *banner1;
    struct ProtocolState pstate[1];
    struct BannerOutput banout1[1];
    struct InteractiveData more;
    int x;
    
    /*
     * Initiate a pseudo-environment for the parser
     */
    banner1 = FUNC0();
    FUNC2(banout1);
    FUNC5(&pstate[0], 0, sizeof(pstate[0]));
    
    /*
     * Parse the input payload
     */
    FUNC8(banner1,
                 0,
                 pstate,
                 (const unsigned char *)input,
                 FUNC7(input),
                 banout1,
                 &more
                 );
    //fprintf(stderr, "%.*s\n", (int)banout_string_length(banout1, PROTO_TELNET), banout_string(banout1, PROTO_TELNET));
    /*
     * Verify that somewhere in the output is the string
     * we are looking for
     */
    x = FUNC3(banout1, PROTO_TELNET, output);
    if (x == 0)
        FUNC6("telnet parser failure: %s\n", output);
    FUNC1(banner1);
    FUNC4(banout1);
    
    return (x==0)?1:0;
}