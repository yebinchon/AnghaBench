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
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

INT FUNC5(int argc, char* argv[])
{
    if ((argc < 2) || (argc > 5))
    {
       FUNC3();
       return EXIT_FAILURE;
    }

    if (argv[1][0] == '-')
    {
        switch (argv[1][1])
        {
           case 'a': /* fall through */
           case 'g':
                     if (argc == 2)
                         FUNC2(NULL, NULL);
                     else if (argc == 3)
                         FUNC2(argv[2], NULL);
                     else if ((argc == 4) && ((FUNC4(argv[2], "-N")) == 0))
                         FUNC2(NULL, argv[3]);
                     else if ((argc == 5) && ((FUNC4(argv[3], "-N")) == 0))
                         FUNC2(argv[2], argv[4]);
                     else
                     {
                         FUNC3();
                         return EXIT_FAILURE;
                     }
                     break;
           case 'd': if (argc == 3)
                         FUNC1(argv[2], NULL);
                     else if (argc == 4)
                         FUNC1(argv[2], argv[3]);
                     else
                     {
                         FUNC3();
                         return EXIT_FAILURE;
                     }
                     break;
           case 's': if (argc == 4)
                         FUNC0(argv[2], argv[3], NULL);
                     else if (argc == 5)
                         FUNC0(argv[2], argv[3], argv[4]);
                     else
                     {
                         FUNC3();
                         return EXIT_FAILURE;
                     }
                     break;
           default:
              FUNC3();
              return EXIT_FAILURE;
        }
    }
    else
        FUNC3();

    return EXIT_SUCCESS;
}