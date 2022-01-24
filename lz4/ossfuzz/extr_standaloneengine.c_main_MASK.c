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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC10(int argc, char **argv)
{
  int ii;
  for(ii = 1; ii < argc; ii++)
  {
    FILE *infile;
    FUNC9("[%s] ", argv[ii]);

    /* Try and open the file. */
    infile = FUNC3(argv[ii], "rb");
    if(infile)
    {
      uint8_t *buffer = NULL;
      size_t buffer_len;

      FUNC9("Opened.. ");

      /* Get the length of the file. */
      FUNC7(infile, 0L, SEEK_END);
      buffer_len = FUNC8(infile);

      /* Reset the file indicator to the beginning of the file. */
      FUNC7(infile, 0L, SEEK_SET);

      /* Allocate a buffer for the file contents. */
      buffer = (uint8_t *)FUNC1(buffer_len, sizeof(uint8_t));
      if(buffer)
      {
        /* Read all the text from the file into the buffer. */
        FUNC5(buffer, sizeof(uint8_t), buffer_len, infile);
        FUNC9("Read %zu bytes, fuzzing.. ", buffer_len);

        /* Call the fuzzer with the data. */
        FUNC0(buffer, buffer_len);

        FUNC9("complete !!");

        /* Free the buffer as it's no longer needed. */
        FUNC6(buffer);
        buffer = NULL;
      }
      else
      {
        FUNC4(stderr,
                "[%s] Failed to allocate %zu bytes \n",
                argv[ii],
                buffer_len);
      }

      /* Close the file as it's no longer needed. */
      FUNC2(infile);
      infile = NULL;
    }
    else
    {
      /* Failed to open the file. Maybe wrong name or wrong permissions? */
      FUNC4(stderr, "[%s] Open failed. \n", argv[ii]);
    }

    FUNC9("\n");
  }
}