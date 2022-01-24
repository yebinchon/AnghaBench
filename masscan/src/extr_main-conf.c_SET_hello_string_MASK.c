#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TcpCfgPayloads {int port; char* payload_base64; struct TcpCfgPayloads* next; } ;
struct TYPE_2__ {struct TcpCfgPayloads* tcp; } ;
struct Masscan {TYPE_1__ payloads; scalar_t__ echo; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const*) ; 
 int CONF_OK ; 
 struct TcpCfgPayloads* FUNC1 (int) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(struct Masscan *masscan, const char *name, const char *value)
{
    unsigned index;
    char *value2;
    struct TcpCfgPayloads *pay;

    if (masscan->echo) {
        for (pay = masscan->payloads.tcp; pay; pay = pay->next) {
            FUNC4(masscan->echo, "hello-string[%u] = %s\n",
                    pay->port, pay->payload_base64);
        }
        return 0;
    }
    
    index = FUNC0(name);
    if (index >= 65536) {
        FUNC4(stderr, "%s: bad index\n", name);
        FUNC3(1);
    }

    
    value2 = FUNC2(value);

    pay = FUNC1(sizeof(*pay));
    
    pay->payload_base64 = value2;
    pay->port = index;
    pay->next = masscan->payloads.tcp;
    masscan->payloads.tcp = pay;
    return CONF_OK;
}