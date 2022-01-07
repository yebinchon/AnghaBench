
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cRess_t ;
typedef int FILE ;


 int DISPLAY (char*,int,int ) ;
 int EXM_THROW (int,char*,char const*,int ) ;
 int FUZ_usage (char const* const) ;
 int LZ4_VERSION_STRING ;
 int createCResources (int *) ;
 int displayLevel ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int frameCheck (int ,int *,unsigned int,size_t) ;
 int freeCResources (int ) ;
 int no_prompt ;
 int strcmp (char const*,char*) ;
 int strerror (int ) ;
 int use_pause ;

int main(int argc, const char** argv)
{
    int argNb;
    unsigned bsid=0;
    size_t blockSize=0;
    const char* const programName = argv[0];


    for (argNb=1; argNb<argc; argNb++) {
        const char* argument = argv[argNb];

        if(!argument) continue;


        if (argument[0]=='-') {
            if (!strcmp(argument, "--no-prompt")) {
                no_prompt=1;
                displayLevel=1;
                continue;
            }
            argument++;

            while (*argument!=0) {
                switch(*argument)
                {
                case 'h':
                    return FUZ_usage(programName);
                case 'v':
                    argument++;
                    displayLevel++;
                    break;
                case 'q':
                    argument++;
                    displayLevel--;
                    break;
                case 'p':
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
                    return FUZ_usage(programName);
                }
            }
        } else {
            int err;
            FILE *srcFile;
            cRess_t ress;
            if (bsid == 0 || blockSize == 0)
              return FUZ_usage(programName);
            DISPLAY("Starting frame checker (%i-bits, %s)\n", (int)(sizeof(size_t)*8), LZ4_VERSION_STRING);
            err = createCResources(&ress);
            if (err) return (err);
            srcFile = fopen(argument, "rb");
            if ( srcFile==((void*)0) ) {
                freeCResources(ress);
                EXM_THROW(1, "%s: %s \n", argument, strerror(errno));
            }
            err = frameCheck(ress, srcFile, bsid, blockSize);
            freeCResources(ress);
            fclose(srcFile);
            return (err);
        }
    }
    return 0;
}
