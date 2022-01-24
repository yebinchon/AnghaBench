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
struct RangeParser {int dummy; } ;
struct RangeList {int dummy; } ;
struct Range6List {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC5 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct RangeList*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct RangeList*) ; 
 struct RangeParser* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct RangeParser*,unsigned long long*,unsigned long long*) ; 
 int FUNC11 (struct RangeParser*,unsigned char const*,size_t*,int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC12(const char *filename, struct RangeList *targets_ipv4, struct Range6List *targets_ipv6)
{
    struct RangeParser *p;
    unsigned char buf[65536];
    FILE *fp = NULL;
    int err;
    bool is_error = false;
    unsigned addr_count = 0;

    /*
     * Open the file containing IP addresses, which can potentially be
     * many megabytes in size
     */
    err = FUNC3(&fp, filename, "rb");
    if (err || fp == NULL) {
        FUNC6(filename);
        FUNC1(1);
    }

    /*
     * Create a parser for reading in the IP addresses using a state
     * machine parser
     */
    p = FUNC9();

    /*
     * Read in the data a block at a time, parsing according to the state
     * machine.
     */
    while (!is_error) {
        size_t count;
        size_t offset;

        count = FUNC5(buf, 1, sizeof(buf), fp);
        if (count <= 0)
            break;

        offset = 0;
        while (offset < count) {
            int x;
            unsigned begin, end;

            x = FUNC11(p, buf, &offset, count, &begin, &end);
            if (x < 0) {
                unsigned long long line_number, char_number;
                FUNC10(p, &line_number, &char_number);
                FUNC4(stderr, "%s:%llu:%llu: parse err\n", filename, line_number, char_number);
                is_error = true;
                break;
            } else if (x == 1) {
                FUNC7(targets_ipv4, begin, end);
                addr_count++;
            } else if (x == 0) {
                if (offset < count)
                    FUNC4(stderr, "[-] fail\n");
            }
        }
    }
    FUNC2(fp);

    /* In case the file doesn't end with a newline '\n', then artificially
     * add one to the end */
    if (!is_error) {
        int x;
        size_t offset = 0;
        unsigned begin, end;
        x = FUNC11(p, (const unsigned char *)"\n", &offset, 1, &begin, &end);
        if (x < 0) {
            unsigned long long line_number, char_number;
            FUNC10(p, &line_number, &char_number);
            FUNC4(stderr, "%s:%llu:%llu: parse err\n", filename, line_number, char_number);
            is_error = true;
        } else if (x == 1) {
            FUNC7(targets_ipv4, begin, end);
            addr_count++;
        }
    }

    FUNC0(1, "[+] %s: %u addresses read\n", filename, addr_count);

    /* Target list must be sorted every time it's been changed, 
     * before it can be used */
    FUNC8(targets_ipv4);

    if (is_error)
        return -1;  /* fail */
    else
        return 0; /* success*/
}