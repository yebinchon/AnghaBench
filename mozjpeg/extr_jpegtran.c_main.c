
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jpeg_error_mgr {scalar_t__ num_warnings; int trace_level; } ;
struct jpeg_decompress_struct {TYPE_1__* mem; void* err; } ;
struct jpeg_compress_struct {TYPE_2__* mem; void* err; } ;
struct cdjpeg_progress_mgr {int dummy; } ;
typedef int jvirt_barray_ptr ;
typedef int j_common_ptr ;
struct TYPE_4__ {int max_memory_to_use; } ;
struct TYPE_3__ {int max_memory_to_use; } ;
typedef unsigned char JOCTET ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int EXIT_WARNING ;
 scalar_t__ FALSE ;
 size_t INPUT_BUF_SIZE ;
 scalar_t__ JCOPYOPT_ALL ;
 scalar_t__ JCOPYOPT_ALL_EXCEPT_ICC ;
 scalar_t__ JCP_MAX_COMPRESSION ;
 size_t JFREAD (int *,unsigned char*,size_t) ;
 size_t JFWRITE (int *,unsigned char*,unsigned long) ;
 int JINT_COMPRESS_PROFILE ;
 int READ_BINARY ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ TRUE ;
 int WRITE_BINARY ;
 int ccommand (char***) ;
 scalar_t__ copyoption ;
 int end_progress_monitor (int ) ;
 int exit (int ) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,int ) ;
 int fprintf (int ,char*,scalar_t__*,...) ;
 int fread (unsigned char*,long,int,int *) ;
 int free (unsigned char*) ;
 scalar_t__ fseek (int *,int ,int ) ;
 long ftell (int *) ;
 char* icc_filename ;
 int jcopy_markers_execute (struct jpeg_decompress_struct*,struct jpeg_compress_struct*,scalar_t__) ;
 int jcopy_markers_setup (struct jpeg_decompress_struct*,scalar_t__) ;
 scalar_t__ jpeg_c_get_int_param (struct jpeg_compress_struct*,int ) ;
 scalar_t__ jpeg_c_int_param_supported (struct jpeg_compress_struct*,int ) ;
 int jpeg_copy_critical_parameters (struct jpeg_decompress_struct*,struct jpeg_compress_struct*) ;
 int jpeg_create_compress (struct jpeg_compress_struct*) ;
 int jpeg_create_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_destroy_compress (struct jpeg_compress_struct*) ;
 int jpeg_destroy_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_finish_compress (struct jpeg_compress_struct*) ;
 int jpeg_finish_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_mem_dest (struct jpeg_compress_struct*,unsigned char**,unsigned long*) ;
 int jpeg_mem_src (struct jpeg_decompress_struct*,unsigned char*,unsigned long) ;
 int * jpeg_read_coefficients (struct jpeg_decompress_struct*) ;
 int jpeg_read_header (struct jpeg_decompress_struct*,scalar_t__) ;
 void* jpeg_std_error (struct jpeg_error_mgr*) ;
 int jpeg_stdio_dest (struct jpeg_compress_struct*,int *) ;
 int jpeg_stdio_src (struct jpeg_decompress_struct*,int *) ;
 int jpeg_write_coefficients (struct jpeg_compress_struct*,int *) ;
 int jpeg_write_icc_profile (struct jpeg_compress_struct*,unsigned char*,unsigned int) ;
 int * jtransform_adjust_parameters (struct jpeg_decompress_struct*,struct jpeg_compress_struct*,int *,int *) ;
 int jtransform_execute_transformation (struct jpeg_decompress_struct*,struct jpeg_compress_struct*,int *,int *) ;
 int jtransform_request_workspace (struct jpeg_decompress_struct*,int *) ;
 scalar_t__ malloc (long) ;
 scalar_t__ memsrc ;
 char* outfilename ;
 int parse_switches (struct jpeg_compress_struct*,int,char**,int ,scalar_t__) ;
 scalar_t__ prefer_smallest ;
 scalar_t__* progname ;
 int * read_stdin () ;
 scalar_t__ realloc (unsigned char*,unsigned long) ;
 int start_progress_monitor (int ,struct cdjpeg_progress_mgr*) ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int transformoption ;
 int usage () ;
 int * write_stdout () ;

int
main (int argc, char **argv)
{
  struct jpeg_decompress_struct srcinfo;
  struct jpeg_compress_struct dstinfo;
  struct jpeg_error_mgr jsrcerr, jdsterr;



  jvirt_barray_ptr *src_coef_arrays;
  jvirt_barray_ptr *dst_coef_arrays;
  int file_index;



  FILE *fp;
  unsigned char *inbuffer = ((void*)0);
  unsigned long insize = 0;
  unsigned char *outbuffer = ((void*)0);
  unsigned long outsize = 0;
  FILE *icc_file;
  JOCTET *icc_profile = ((void*)0);
  long icc_len = 0;






  progname = argv[0];
  if (progname == ((void*)0) || progname[0] == 0)
    progname = "jpegtran";


  srcinfo.err = jpeg_std_error(&jsrcerr);
  jpeg_create_decompress(&srcinfo);

  dstinfo.err = jpeg_std_error(&jdsterr);
  jpeg_create_compress(&dstinfo);
  file_index = parse_switches(&dstinfo, argc, argv, 0, FALSE);
  jsrcerr.trace_level = jdsterr.trace_level;
  srcinfo.mem->max_memory_to_use = dstinfo.mem->max_memory_to_use;
  if (file_index < argc-1) {
    fprintf(stderr, "%s: only one input file\n", progname);
    usage();
  }



  if (file_index < argc) {
    if ((fp = fopen(argv[file_index], READ_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s for reading\n", progname,
              argv[file_index]);
      exit(EXIT_FAILURE);
    }
  } else {

    fp = read_stdin();
  }

  if (icc_filename != ((void*)0)) {
    if ((icc_file = fopen(icc_filename, READ_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s\n", progname, icc_filename);
      exit(EXIT_FAILURE);
    }
    if (fseek(icc_file, 0, SEEK_END) < 0 ||
        (icc_len = ftell(icc_file)) < 1 ||
        fseek(icc_file, 0, SEEK_SET) < 0) {
      fprintf(stderr, "%s: can't determine size of %s\n", progname,
              icc_filename);
      exit(EXIT_FAILURE);
    }
    if ((icc_profile = (JOCTET *)malloc(icc_len)) == ((void*)0)) {
      fprintf(stderr, "%s: can't allocate memory for ICC profile\n", progname);
      fclose(icc_file);
      exit(EXIT_FAILURE);
    }
    if (fread(icc_profile, icc_len, 1, icc_file) < 1) {
      fprintf(stderr, "%s: can't read ICC profile from %s\n", progname,
              icc_filename);
      free(icc_profile);
      fclose(icc_file);
      exit(EXIT_FAILURE);
    }
    fclose(icc_file);
    if (copyoption == JCOPYOPT_ALL)
      copyoption = JCOPYOPT_ALL_EXCEPT_ICC;
  }






  if (jpeg_c_int_param_supported(&dstinfo, JINT_COMPRESS_PROFILE) &&
      jpeg_c_get_int_param(&dstinfo, JINT_COMPRESS_PROFILE)
        == JCP_MAX_COMPRESSION)
    memsrc = TRUE;
  jpeg_stdio_src(&srcinfo, fp);


  jcopy_markers_setup(&srcinfo, copyoption);


  (void) jpeg_read_header(&srcinfo, TRUE);
  src_coef_arrays = jpeg_read_coefficients(&srcinfo);


  jpeg_copy_critical_parameters(&srcinfo, &dstinfo);
  dst_coef_arrays = src_coef_arrays;
  if (fp != stdin)
    fclose(fp);


  if (outfilename != ((void*)0)) {
    if ((fp = fopen(outfilename, WRITE_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s for writing\n", progname,
              outfilename);
      exit(EXIT_FAILURE);
    }
  } else {

    fp = write_stdout();
  }


  file_index = parse_switches(&dstinfo, argc, argv, 0, TRUE);
  jpeg_stdio_dest(&dstinfo, fp);


  jpeg_write_coefficients(&dstinfo, dst_coef_arrays);


  jcopy_markers_execute(&srcinfo, &dstinfo, copyoption);

  if (icc_profile != ((void*)0))
    jpeg_write_icc_profile(&dstinfo, icc_profile, (unsigned int)icc_len);
  jpeg_finish_compress(&dstinfo);
  jpeg_destroy_compress(&dstinfo);
  (void) jpeg_finish_decompress(&srcinfo);
  jpeg_destroy_decompress(&srcinfo);


  if (fp != stdout)
    fclose(fp);





  free(inbuffer);
  free(outbuffer);

  if (icc_profile != ((void*)0))
    free(icc_profile);


  exit(jsrcerr.num_warnings + jdsterr.num_warnings ?
       EXIT_WARNING : EXIT_SUCCESS);
  return 0;
}
