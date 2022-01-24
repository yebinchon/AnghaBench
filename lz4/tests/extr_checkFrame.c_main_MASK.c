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
typedef  int /*<<< orphan*/  cRess_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const* const) ; 
 int /*<<< orphan*/  LZ4_VERSION_STRING ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int displayLevel ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int no_prompt ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int use_pause ; 

int FUNC10(int argc, const char** argv)
{
    int argNb;
    unsigned bsid=0;
    size_t blockSize=0;
    const char* const programName = argv[0];

    /* Check command line */
    for (argNb=1; argNb<argc; argNb++) {
        const char* argument = argv[argNb];

        if(!argument) continue;   /* Protection if argument empty */

        /* Decode command (note : aggregated short commands are allowed) */
        if (argument[0]=='-') {
            if (!FUNC8(argument, "--no-prompt")) {
                no_prompt=1;
                displayLevel=1;
                continue;
            }
            argument++;

            while (*argument!=0) {
                switch(*argument)
                {
                case 'h':
                    return FUNC2(programName);
                case 'v':
                    argument++;
                    displayLevel++;
                    break;
                case 'q':
                    argument++;
                    displayLevel--;
                    break;
                case 'p': /* pause at the end */
                    argument++;
                    use_pause = 1;
                    break;

                case 'b':
                    argument++;
                    bsid=0;
                    while ((*argument>='0') && (*argument<='9')) {
                        bsid *= 10;
                        bsid += (unsigned)(*argument - '0');
                        argument++;
                    }
                    break;

                case 'B':
                    argument++;
                    blockSize=0;
                    while ((*argument>='0') && (*argument<='9')) {
                        blockSize *= 10;
                        blockSize += (size_t)(*argument - '0');
                        argument++;
                    }
                    break;

                default:
                    ;
                    return FUNC2(programName);
                }
            }
        } else {
            int err;
            FILE *srcFile;
            cRess_t ress;
            if (bsid == 0 || blockSize == 0)
              return FUNC2(programName);
            FUNC0("Starting frame checker (%i-bits, %s)\n", (int)(sizeof(size_t)*8), LZ4_VERSION_STRING);
            err = FUNC3(&ress);
            if (err) return (err);
            srcFile = FUNC5(argument, "rb");
            if ( srcFile==NULL ) {
                FUNC7(ress);
                FUNC1(1, "%s: %s \n", argument, FUNC9(errno));
            }
            err = FUNC6(ress, srcFile, bsid, blockSize);
            FUNC7(ress);
            FUNC4(srcFile);
            return (err);
        }
    }
    return 0;
}