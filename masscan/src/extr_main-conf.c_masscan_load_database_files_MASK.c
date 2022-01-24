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
struct TYPE_2__ {char* pcap_payloads_filename; char* nmap_payloads_filename; char* nmap_service_probes_filename; int /*<<< orphan*/  probes; int /*<<< orphan*/ * udp; int /*<<< orphan*/ * oproto; } ;
struct Masscan {TYPE_1__ payloads; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

void
FUNC8(struct Masscan *masscan)
{
    const char *filename;
    
    /*
     * "pcap-payloads"
     */
    filename = masscan->payloads.pcap_payloads_filename;
    if (filename) {
        if (masscan->payloads.udp == NULL)
            masscan->payloads.udp = FUNC5();
        if (masscan->payloads.oproto == NULL)
            masscan->payloads.oproto = FUNC5();

        FUNC4(filename, masscan->payloads.udp, masscan->payloads.oproto);
    }

    /*
     * "nmap-payloads"
     */
    filename = masscan->payloads.nmap_payloads_filename;
    if (filename) {
        FILE *fp;
        int err;
        
        
        err = FUNC1(&fp, filename, "rt");
        if (err || fp == NULL) {
            FUNC7(filename);
        } else {
            if (masscan->payloads.udp == NULL)
                masscan->payloads.udp = FUNC5();
            
            FUNC6(fp, filename, masscan->payloads.udp);
            
            FUNC0(fp);
        }
    }
    
    /*
     * "nmap-service-probes"
     */
    filename = masscan->payloads.nmap_service_probes_filename;
    if (filename) {
        if (masscan->payloads.probes)
            FUNC2(masscan->payloads.probes);
        
        masscan->payloads.probes = FUNC3(filename);
    }
}