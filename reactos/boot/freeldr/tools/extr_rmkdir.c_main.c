
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ConvertPathCharacters (char*) ;
 int MakeDirectory (char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

int main(int argc, char* argv[])
{
    if (argc != 2)
    {
        fprintf(stderr, "Wrong number of arguments\n");
        exit(1);
    }

    ConvertPathCharacters(argv[1]);

    return MakeDirectory(argv[1]);
}
