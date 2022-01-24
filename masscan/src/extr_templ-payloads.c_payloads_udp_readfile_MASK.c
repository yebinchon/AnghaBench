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
struct RangeList {int /*<<< orphan*/  member_0; } ;
struct PayloadsUDP {int dummy; } ;
typedef  int /*<<< orphan*/  ports ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct RangeList*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (unsigned char*,size_t*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct PayloadsUDP*,unsigned char*,size_t,struct RangeList*,unsigned int,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct RangeList*,char*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct RangeList*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

void
FUNC13(FILE *fp, const char *filename,
                   struct PayloadsUDP *payloads)
{
    char line[16384];
    unsigned line_number = 0;


    line[0] = '\0';

    for (;;) {
        unsigned is_error = 0;
        const char *p;
        struct RangeList ports[1] = {{0}};
        unsigned source_port = 0x10000;
        unsigned char buf[1500] = {0};
        size_t buf_length = 0;

        FUNC5(ports, 0, sizeof(ports[0]));

        /* [UDP] */
        if (!FUNC1(fp, &line_number, line, sizeof(line)))
            break;

        if (FUNC3(line, "udp", 3) != 0) {
            FUNC0(stderr, "%s:%u: syntax error, expected \"udp\".\n",
                filename, line_number);
            goto end;
        } else
            FUNC4(line, line+3, FUNC10(line));
        FUNC12(line, sizeof(line));


        /* [ports] */
        if (!FUNC1(fp, &line_number, line, sizeof(line)))
            break;
        p = FUNC8(ports, line, &is_error, 0);
        if (is_error) {
            FUNC0(stderr, "%s:%u: syntax error, expected ports\n",
                filename, line_number);
            goto end;
        }
        FUNC4(line, p, FUNC10(p)+1);
        FUNC12(line, sizeof(line));

        /* [C string] */
        for (;;) {
            FUNC12(line, sizeof(line));
            if (!FUNC1(fp, &line_number, line, sizeof(line)))
                break;
            if (line[0] != '\"')
                break;

            p = FUNC6(buf, &buf_length, sizeof(buf), line);
            FUNC4(line, p, FUNC10(p)+1);
            FUNC12(line, sizeof(line));
        }

        /* [source] */
        if (FUNC3(line, "source", 6) == 0) {
            FUNC4(line, line+6, FUNC10(line+5));
            FUNC12(line, sizeof(line));
            if (!FUNC2(line[0])) {
                FUNC0(stderr, "%s:%u: expected source port\n",
                        filename, line_number);
                goto end;
            }
            source_port = (unsigned)FUNC11(line, 0, 0);
            line[0] = '\0';
        }

        /*
         * Now we've completely parsed the record, so add it to our
         * list of payloads
         */
		if (buf_length)
			FUNC7(payloads, buf, buf_length, ports, source_port, 0);

        FUNC9(ports);
    }

end:
    ;//fclose(fp);
}