
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;


 int Addhost (char*,char*,char*) ;
 int Deletehost (char*,char*) ;
 int DisplayArpEntries (char*,char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int Usage () ;
 int strcmp (char*,char*) ;

INT main(int argc, char* argv[])
{
    if ((argc < 2) || (argc > 5))
    {
       Usage();
       return EXIT_FAILURE;
    }

    if (argv[1][0] == '-')
    {
        switch (argv[1][1])
        {
           case 'a':
           case 'g':
                     if (argc == 2)
                         DisplayArpEntries(((void*)0), ((void*)0));
                     else if (argc == 3)
                         DisplayArpEntries(argv[2], ((void*)0));
                     else if ((argc == 4) && ((strcmp(argv[2], "-N")) == 0))
                         DisplayArpEntries(((void*)0), argv[3]);
                     else if ((argc == 5) && ((strcmp(argv[3], "-N")) == 0))
                         DisplayArpEntries(argv[2], argv[4]);
                     else
                     {
                         Usage();
                         return EXIT_FAILURE;
                     }
                     break;
           case 'd': if (argc == 3)
                         Deletehost(argv[2], ((void*)0));
                     else if (argc == 4)
                         Deletehost(argv[2], argv[3]);
                     else
                     {
                         Usage();
                         return EXIT_FAILURE;
                     }
                     break;
           case 's': if (argc == 4)
                         Addhost(argv[2], argv[3], ((void*)0));
                     else if (argc == 5)
                         Addhost(argv[2], argv[3], argv[4]);
                     else
                     {
                         Usage();
                         return EXIT_FAILURE;
                     }
                     break;
           default:
              Usage();
              return EXIT_FAILURE;
        }
    }
    else
        Usage();

    return EXIT_SUCCESS;
}
