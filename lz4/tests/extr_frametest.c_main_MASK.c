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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUZ_COMPRESSIBILITY_DEFAULT ; 
 int FUNC1 (char const* const) ; 
 int /*<<< orphan*/  LZ4_VERSION_STRING ; 
 int FUNC2 (int /*<<< orphan*/  const*,int,int) ; 
 int FUNC3 (int,double) ; 
 int displayLevel ; 
 int FUNC4 (int,unsigned int,unsigned int,double,int) ; 
 unsigned int nbTestsDefault ; 
 int no_prompt ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int use_pause ; 

int FUNC7(int argc, const char** argv)
{
    U32 seed=0;
    int seedset=0;
    int argNb;
    unsigned nbTests = nbTestsDefault;
    unsigned testNb = 0;
    int proba = FUZ_COMPRESSIBILITY_DEFAULT;
    int result=0;
    U32 duration=0;
    const char* const programName = argv[0];

    /* Check command line */
    for (argNb=1; argNb<argc; argNb++) {
        const char* argument = argv[argNb];

        if(!argument) continue;   /* Protection if argument empty */

        /* Decode command (note : aggregated short commands are allowed) */
        if (argument[0]=='-') {
            if (!FUNC5(argument, "--no-prompt")) {
                no_prompt=1;
                seedset=1;
                displayLevel=1;
                continue;
            }
            argument++;

            while (*argument!=0) {
                switch(*argument)
                {
                case 'h':
                    return FUNC1(programName);
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

                case 'i':
                    argument++;
                    nbTests=0; duration=0;
                    while ((*argument>='0') && (*argument<='9')) {
                        nbTests *= 10;
                        nbTests += (unsigned)(*argument - '0');
                        argument++;
                    }
                    break;

                case 'T':
                    argument++;
                    nbTests = 0; duration = 0;
                    for (;;) {
                        switch(*argument)
                        {
                            case 'm': duration *= 60; argument++; continue;
                            case 's':
                            case 'n': argument++; continue;
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9': duration *= 10; duration += (U32)(*argument++ - '0'); continue;
                        }
                        break;
                    }
                    break;

                case 's':
                    argument++;
                    seed=0;
                    seedset=1;
                    while ((*argument>='0') && (*argument<='9')) {
                        seed *= 10;
                        seed += (U32)(*argument - '0');
                        argument++;
                    }
                    break;
                case 't':
                    argument++;
                    testNb=0;
                    while ((*argument>='0') && (*argument<='9')) {
                        testNb *= 10;
                        testNb += (unsigned)(*argument - '0');
                        argument++;
                    }
                    break;
                case 'P':   /* compressibility % */
                    argument++;
                    proba=0;
                    while ((*argument>='0') && (*argument<='9')) {
                        proba *= 10;
                        proba += *argument - '0';
                        argument++;
                    }
                    if (proba<0) proba=0;
                    if (proba>100) proba=100;
                    break;
                default:
                    ;
                    return FUNC1(programName);
                }
            }
        }
    }

    /* Get Seed */
    FUNC0("Starting lz4frame tester (%i-bits, %s)\n", (int)(sizeof(size_t)*8), LZ4_VERSION_STRING);

    if (!seedset) {
        time_t const t = FUNC6(NULL);
        U32 const h = FUNC2(&t, sizeof(t), 1);
        seed = h % 10000;
    }
    FUNC0("Seed = %u\n", seed);
    if (proba!=FUZ_COMPRESSIBILITY_DEFAULT) FUNC0("Compressibility : %i%%\n", proba);

    nbTests += (nbTests==0);  /* avoid zero */

    if (testNb==0) result = FUNC3(seed, ((double)proba) / 100);
    if (result) return 1;
    return FUNC4(seed, nbTests, testNb, ((double)proba) / 100, duration);
}