
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG (char*) ;
 int assert (int) ;
 int bad_usage (char const* const) ;
 int fileCheck (char const*,int) ;

int main(int argCount, const char** argv)
{
    const char* const exeName = argv[0];
    int argNb = 1;
    int clevel = 0;

    assert(argCount >= 1);
    if (argCount < 2) return bad_usage(exeName);

    if (argv[1][0] == '-') {
        clevel = argv[1][1] - '0';
        argNb = 2;
    }

    if (argNb >= argCount) return bad_usage(exeName);

    fileCheck(argv[argNb], clevel);
    MSG("no pb detected \n");
    return 0;
}
