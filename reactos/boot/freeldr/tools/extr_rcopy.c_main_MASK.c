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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TRANSFER_SIZE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC11(int argc, char* argv[])
{
   char* path1;
   char* path2;
   FILE* in;
   FILE* out;
   char* buf;
   int n_in;
   int n_out;

   if (argc != 3)
     {
    FUNC5(stderr, "Too many arguments\n");
    FUNC1(1);
     }

   path1 = FUNC0(argv[1]);
   path2 = FUNC0(argv[2]);

   in = FUNC4(path1, "rb");
   if (in == NULL)
     {
    FUNC10("Cannot open input file");
    FUNC1(1);
     }



   out = FUNC4(path2, "wb");
   if (out == NULL)
     {
    FUNC10("Cannot open output file");
    FUNC2(in);
    FUNC1(1);
     }

   buf = FUNC9(TRANSFER_SIZE);

   while (!FUNC3(in))
     {
    n_in = FUNC6(buf, 1, TRANSFER_SIZE, in);
    n_out = FUNC8(buf, 1, n_in, out);
    if (n_in != n_out)
      {
         FUNC10("Failed to write to output file\n");
         FUNC7(buf);
         FUNC2(in);
         FUNC2(out);
         FUNC1(1);
      }
     }
   FUNC1(0);
}