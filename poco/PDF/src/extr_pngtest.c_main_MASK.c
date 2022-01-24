#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* memory_infop ;
struct TYPE_3__ {struct TYPE_3__* next; scalar_t__ pointer; scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  PNG_HEADER_VERSION_STRING ; 
 scalar_t__ PNG_LIBPNG_VER ; 
 char* PNG_LIBPNG_VER_STRING ; 
 int /*<<< orphan*/  STDERR ; 
 char* ZLIB_VERSION ; 
 scalar_t__ FUNC0 () ; 
 int current_allocation ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__* filters_used ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* inname ; 
 int maximum_allocation ; 
 int num_allocations ; 
 char* outname ; 
 TYPE_1__* pinformation ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  png_info ; 
 char* png_libpng_ver ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  png_struct ; 
 int status_dots_requested ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ tIME_chunk_present ; 
 char* tIME_string ; 
 float t_decode ; 
 float t_encode ; 
 float t_misc ; 
 float t_start ; 
 float t_stop ; 
 int FUNC8 (char*,char*) ; 
 int total_allocation ; 
 int verbose ; 
 scalar_t__ zero_samples ; 

int
FUNC9(int argc, char *argv[])
{
   int multiple = 0;
   int ierror = 0;

   FUNC2(STDERR, "Testing libpng version %s\n", PNG_LIBPNG_VER_STRING);
   FUNC2(STDERR, "   with zlib   version %s\n", ZLIB_VERSION);
   FUNC2(STDERR,"%s",FUNC4(NULL));
   /* Show the version of libpng used in building the library */
   FUNC2(STDERR," library (%lu):%d",
      (unsigned long)FUNC3(),
      FUNC5(NULL));
   /* Show the version of libpng used in building the application */
   FUNC2(STDERR," pngtest (%lu):%d", (unsigned long)PNG_LIBPNG_VER,
      PNG_HEADER_VERSION_STRING);
   FUNC2(STDERR," png_sizeof(png_struct)=%ld, png_sizeof(png_info)=%ld\n",
                    (long)FUNC6(png_struct), (long)FUNC6(png_info));

   /* Do some consistency checking on the memory allocation settings, I'm
      not sure this matters, but it is nice to know, the first of these
      tests should be impossible because of the way the macros are set
      in pngconf.h */
#if defined(MAXSEG_64K) && !defined(PNG_MAX_MALLOC_64K)
      fprintf(STDERR, " NOTE: Zlib compiled for max 64k, libpng not\n");
#endif
   /* I think the following can happen. */
#if !defined(MAXSEG_64K) && defined(PNG_MAX_MALLOC_64K)
      fprintf(STDERR, " NOTE: libpng compiled for max 64k, zlib not\n");
#endif

   if (FUNC7(png_libpng_ver, PNG_LIBPNG_VER_STRING))
   {
      FUNC2(STDERR,
         "Warning: versions are different between png.h and png.c\n");
      FUNC2(STDERR, "  png.h version: %s\n", PNG_LIBPNG_VER_STRING);
      FUNC2(STDERR, "  png.c version: %s\n\n", png_libpng_ver);
      ++ierror;
   }

   if (argc > 1)
   {
      if (FUNC7(argv[1], "-m") == 0)
      {
         multiple = 1;
         status_dots_requested = 0;
      }
      else if (FUNC7(argv[1], "-mv") == 0 ||
               FUNC7(argv[1], "-vm") == 0 )
      {
         multiple = 1;
         verbose = 1;
         status_dots_requested = 1;
      }
      else if (FUNC7(argv[1], "-v") == 0)
      {
         verbose = 1;
         status_dots_requested = 1;
         inname = argv[2];
      }
      else
      {
         inname = argv[1];
         status_dots_requested = 0;
      }
   }

   if (!multiple && argc == 3+verbose)
     outname = argv[2+verbose];

   if ((!multiple && argc > 3+verbose) || (multiple && argc < 2))
   {
     FUNC2(STDERR,
       "usage: %s [infile.png] [outfile.png]\n\t%s -m {infile.png}\n",
        argv[0], argv[0]);
     FUNC2(STDERR,
       "  reads/writes one PNG file (without -m) or multiple files (-m)\n");
     FUNC2(STDERR,
       "  with -m %s is used as a temporary file\n", outname);
     FUNC1(1);
   }

   if (multiple)
   {
      int i;
#if defined(PNG_USER_MEM_SUPPORTED) && PNG_DEBUG
      int allocation_now = current_allocation;
#endif
      for (i=2; i<argc; ++i)
      {
#if defined(PNG_READ_USER_TRANSFORM_SUPPORTED)
         int k;
#endif
         int kerror;
         FUNC2(STDERR, "Testing %s:",argv[i]);
         kerror = FUNC8(argv[i], outname);
         if (kerror == 0)
         {
#if defined(PNG_WRITE_USER_TRANSFORM_SUPPORTED)
            fprintf(STDERR, "\n PASS (%lu zero samples)\n",
               (unsigned long)zero_samples);
#else
            FUNC2(STDERR, " PASS\n");
#endif
#if defined(PNG_READ_USER_TRANSFORM_SUPPORTED)
            for (k=0; k<256; k++)
               if(filters_used[k])
                  fprintf(STDERR, " Filter %d was used %lu times\n",
                     k,(unsigned long)filters_used[k]);
#endif
#if defined(PNG_TIME_RFC1123_SUPPORTED)
         if(tIME_chunk_present != 0)
            fprintf(STDERR, " tIME = %s\n",tIME_string);
         tIME_chunk_present = 0;
#endif /* PNG_TIME_RFC1123_SUPPORTED */
         }
         else
         {
            FUNC2(STDERR, " FAIL\n");
            ierror += kerror;
         }
#if defined(PNG_USER_MEM_SUPPORTED) && PNG_DEBUG
         if (allocation_now != current_allocation)
            fprintf(STDERR, "MEMORY ERROR: %d bytes lost\n",
               current_allocation-allocation_now);
         if (current_allocation != 0)
         {
            memory_infop pinfo = pinformation;

            fprintf(STDERR, "MEMORY ERROR: %d bytes still allocated\n",
               current_allocation);
            while (pinfo != NULL)
            {
               fprintf(STDERR, " %lu bytes at %x\n", (unsigned long)pinfo->size,
                 (unsigned int) pinfo->pointer);
               pinfo = pinfo->next;
            }
         }
#endif
      }
#if defined(PNG_USER_MEM_SUPPORTED) && PNG_DEBUG
         fprintf(STDERR, " Current memory allocation: %10d bytes\n",
            current_allocation);
         fprintf(STDERR, " Maximum memory allocation: %10d bytes\n",
            maximum_allocation);
         fprintf(STDERR, " Total   memory allocation: %10d bytes\n",
            total_allocation);
         fprintf(STDERR, "     Number of allocations: %10d\n",
            num_allocations);
#endif
   }
   else
   {
      int i;
      for (i=0; i<3; ++i)
      {
         int kerror;
#if defined(PNG_USER_MEM_SUPPORTED) && PNG_DEBUG
         int allocation_now = current_allocation;
#endif
         if (i == 1) status_dots_requested = 1;
         else if(verbose == 0)status_dots_requested = 0;
         if (i == 0 || verbose == 1 || ierror != 0)
            FUNC2(STDERR, "Testing %s:",inname);
         kerror = FUNC8(inname, outname);
         if(kerror == 0)
         {
            if(verbose == 1 || i == 2)
            {
#if defined(PNG_READ_USER_TRANSFORM_SUPPORTED)
                int k;
#endif
#if defined(PNG_WRITE_USER_TRANSFORM_SUPPORTED)
                fprintf(STDERR, "\n PASS (%lu zero samples)\n",
                   (unsigned long)zero_samples);
#else
                FUNC2(STDERR, " PASS\n");
#endif
#if defined(PNG_READ_USER_TRANSFORM_SUPPORTED)
                for (k=0; k<256; k++)
                   if(filters_used[k])
                      fprintf(STDERR, " Filter %d was used %lu times\n",
                         k,(unsigned long)filters_used[k]);
#endif
#if defined(PNG_TIME_RFC1123_SUPPORTED)
             if(tIME_chunk_present != 0)
                fprintf(STDERR, " tIME = %s\n",tIME_string);
#endif /* PNG_TIME_RFC1123_SUPPORTED */
            }
         }
         else
         {
            if(verbose == 0 && i != 2)
               FUNC2(STDERR, "Testing %s:",inname);
            FUNC2(STDERR, " FAIL\n");
            ierror += kerror;
         }
#if defined(PNG_USER_MEM_SUPPORTED) && PNG_DEBUG
         if (allocation_now != current_allocation)
             fprintf(STDERR, "MEMORY ERROR: %d bytes lost\n",
               current_allocation-allocation_now);
         if (current_allocation != 0)
         {
             memory_infop pinfo = pinformation;

             fprintf(STDERR, "MEMORY ERROR: %d bytes still allocated\n",
                current_allocation);
             while (pinfo != NULL)
             {
                fprintf(STDERR," %lu bytes at %x\n",
                   (unsigned long)pinfo->size, (unsigned int)pinfo->pointer);
                pinfo = pinfo->next;
             }
          }
#endif
       }
#if defined(PNG_USER_MEM_SUPPORTED) && PNG_DEBUG
       fprintf(STDERR, " Current memory allocation: %10d bytes\n",
          current_allocation);
       fprintf(STDERR, " Maximum memory allocation: %10d bytes\n",
          maximum_allocation);
       fprintf(STDERR, " Total   memory allocation: %10d bytes\n",
          total_allocation);
       fprintf(STDERR, "     Number of allocations: %10d\n",
            num_allocations);
#endif
   }

#ifdef PNGTEST_TIMING
   t_stop = (float)clock();
   t_misc += (t_stop - t_start);
   t_start = t_stop;
   fprintf(STDERR," CPU time used = %.3f seconds",
      (t_misc+t_decode+t_encode)/(float)CLOCKS_PER_SEC);
   fprintf(STDERR," (decoding %.3f,\n",
      t_decode/(float)CLOCKS_PER_SEC);
   fprintf(STDERR,"        encoding %.3f ,",
      t_encode/(float)CLOCKS_PER_SEC);
   fprintf(STDERR," other %.3f seconds)\n\n",
      t_misc/(float)CLOCKS_PER_SEC);
#endif

   if (ierror == 0)
      FUNC2(STDERR, "libpng passes test\n");
   else
      FUNC2(STDERR, "libpng FAILS test\n");
   return (int)(ierror != 0);
}