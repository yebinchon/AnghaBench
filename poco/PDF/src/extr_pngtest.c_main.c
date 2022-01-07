
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* memory_infop ;
struct TYPE_3__ {struct TYPE_3__* next; scalar_t__ pointer; scalar_t__ size; } ;


 scalar_t__ CLOCKS_PER_SEC ;
 int PNG_HEADER_VERSION_STRING ;
 scalar_t__ PNG_LIBPNG_VER ;
 char* PNG_LIBPNG_VER_STRING ;
 int STDERR ;
 char* ZLIB_VERSION ;
 scalar_t__ clock () ;
 int current_allocation ;
 int exit (int) ;
 scalar_t__* filters_used ;
 int fprintf (int ,char*,...) ;
 char* inname ;
 int maximum_allocation ;
 int num_allocations ;
 char* outname ;
 TYPE_1__* pinformation ;
 scalar_t__ png_access_version_number () ;
 char* png_get_copyright (int *) ;
 int png_get_header_version (int *) ;
 int png_info ;
 char* png_libpng_ver ;
 scalar_t__ png_sizeof (int ) ;
 int png_struct ;
 int status_dots_requested ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ tIME_chunk_present ;
 char* tIME_string ;
 float t_decode ;
 float t_encode ;
 float t_misc ;
 float t_start ;
 float t_stop ;
 int test_one_file (char*,char*) ;
 int total_allocation ;
 int verbose ;
 scalar_t__ zero_samples ;

int
main(int argc, char *argv[])
{
   int multiple = 0;
   int ierror = 0;

   fprintf(STDERR, "Testing libpng version %s\n", PNG_LIBPNG_VER_STRING);
   fprintf(STDERR, "   with zlib   version %s\n", ZLIB_VERSION);
   fprintf(STDERR,"%s",png_get_copyright(((void*)0)));

   fprintf(STDERR," library (%lu):%s",
      (unsigned long)png_access_version_number(),
      png_get_header_version(((void*)0)));

   fprintf(STDERR," pngtest (%lu):%s", (unsigned long)PNG_LIBPNG_VER,
      PNG_HEADER_VERSION_STRING);
   fprintf(STDERR," png_sizeof(png_struct)=%ld, png_sizeof(png_info)=%ld\n",
                    (long)png_sizeof(png_struct), (long)png_sizeof(png_info));
   if (strcmp(png_libpng_ver, PNG_LIBPNG_VER_STRING))
   {
      fprintf(STDERR,
         "Warning: versions are different between png.h and png.c\n");
      fprintf(STDERR, "  png.h version: %s\n", PNG_LIBPNG_VER_STRING);
      fprintf(STDERR, "  png.c version: %s\n\n", png_libpng_ver);
      ++ierror;
   }

   if (argc > 1)
   {
      if (strcmp(argv[1], "-m") == 0)
      {
         multiple = 1;
         status_dots_requested = 0;
      }
      else if (strcmp(argv[1], "-mv") == 0 ||
               strcmp(argv[1], "-vm") == 0 )
      {
         multiple = 1;
         verbose = 1;
         status_dots_requested = 1;
      }
      else if (strcmp(argv[1], "-v") == 0)
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
     fprintf(STDERR,
       "usage: %s [infile.png] [outfile.png]\n\t%s -m {infile.png}\n",
        argv[0], argv[0]);
     fprintf(STDERR,
       "  reads/writes one PNG file (without -m) or multiple files (-m)\n");
     fprintf(STDERR,
       "  with -m %s is used as a temporary file\n", outname);
     exit(1);
   }

   if (multiple)
   {
      int i;



      for (i=2; i<argc; ++i)
      {



         int kerror;
         fprintf(STDERR, "Testing %s:",argv[i]);
         kerror = test_one_file(argv[i], outname);
         if (kerror == 0)
         {




            fprintf(STDERR, " PASS\n");
         }
         else
         {
            fprintf(STDERR, " FAIL\n");
            ierror += kerror;
         }
      }
   }
   else
   {
      int i;
      for (i=0; i<3; ++i)
      {
         int kerror;



         if (i == 1) status_dots_requested = 1;
         else if(verbose == 0)status_dots_requested = 0;
         if (i == 0 || verbose == 1 || ierror != 0)
            fprintf(STDERR, "Testing %s:",inname);
         kerror = test_one_file(inname, outname);
         if(kerror == 0)
         {
            if(verbose == 1 || i == 2)
            {







                fprintf(STDERR, " PASS\n");
            }
         }
         else
         {
            if(verbose == 0 && i != 2)
               fprintf(STDERR, "Testing %s:",inname);
            fprintf(STDERR, " FAIL\n");
            ierror += kerror;
         }
       }
   }
   if (ierror == 0)
      fprintf(STDERR, "libpng passes test\n");
   else
      fprintf(STDERR, "libpng FAILS test\n");
   return (int)(ierror != 0);
}
