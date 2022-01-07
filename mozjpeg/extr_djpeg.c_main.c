
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;


struct jpeg_error_mgr {scalar_t__ num_warnings; int last_addon_message; int first_addon_message; int addon_message_table; } ;
struct jpeg_decompress_struct {int output_height; int output_scanline; int output_width; TYPE_12__* err; } ;
struct TYPE_19__ {int total_passes; int completed_passes; } ;
struct cdjpeg_progress_mgr {TYPE_1__ pub; } ;
typedef int j_common_ptr ;
typedef TYPE_2__* djpeg_dest_ptr ;
struct TYPE_20__ {int (* finish_output ) (struct jpeg_decompress_struct*,TYPE_2__*) ;int (* put_pixel_rows ) (struct jpeg_decompress_struct*,TYPE_2__*,void*) ;int buffer_height; int buffer; int (* start_output ) (struct jpeg_decompress_struct*,TYPE_2__*) ;int (* calc_buffer_dimensions ) (struct jpeg_decompress_struct*,TYPE_2__*) ;int * output_file; } ;
struct TYPE_18__ {scalar_t__ msg_code; } ;
typedef unsigned char JOCTET ;
typedef void* JDIMENSION ;
typedef int FILE ;


 int ERREXIT (struct jpeg_decompress_struct*,int ) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int EXIT_WARNING ;
 int FALSE ;






 size_t INPUT_BUF_SIZE ;
 int JERR_UNSUPPORTED_FORMAT ;
 size_t JFREAD (int *,unsigned char*,size_t) ;
 int JMSG_FIRSTADDONCODE ;
 int JMSG_LASTADDONCODE ;
 scalar_t__ JPEG_APP0 ;
 scalar_t__ JPEG_COM ;
 scalar_t__ JWRN_BOGUS_ICC ;
 int READ_BINARY ;
 int TRUE ;
 int WRITE_BINARY ;
 int ccommand (char***) ;
 int cdjpeg_message_table ;
 scalar_t__ crop ;
 int crop_height ;
 int crop_width ;
 int crop_x ;
 int crop_y ;
 int end_progress_monitor (int ) ;
 int exit (int ) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,int ) ;
 int fprintf (int ,char*,...) ;
 int free (unsigned char*) ;
 int fwrite (unsigned char*,unsigned int,int,int *) ;
 char* icc_filename ;
 TYPE_2__* jinit_write_bmp (struct jpeg_decompress_struct*,int ,int ) ;
 TYPE_2__* jinit_write_gif (struct jpeg_decompress_struct*) ;
 TYPE_2__* jinit_write_ppm (struct jpeg_decompress_struct*) ;
 TYPE_2__* jinit_write_rle (struct jpeg_decompress_struct*) ;
 TYPE_2__* jinit_write_targa (struct jpeg_decompress_struct*) ;
 int jpeg_create_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_crop_scanline (struct jpeg_decompress_struct*,int*,int*) ;
 int jpeg_destroy_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_finish_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_mem_src (struct jpeg_decompress_struct*,unsigned char*,unsigned long) ;
 int jpeg_read_header (struct jpeg_decompress_struct*,int ) ;
 scalar_t__ jpeg_read_icc_profile (struct jpeg_decompress_struct*,unsigned char**,unsigned int*) ;
 void* jpeg_read_scanlines (struct jpeg_decompress_struct*,int ,int ) ;
 int jpeg_set_marker_processor (struct jpeg_decompress_struct*,scalar_t__,int ) ;
 int jpeg_skip_scanlines (struct jpeg_decompress_struct*,int) ;
 int jpeg_start_decompress (struct jpeg_decompress_struct*) ;
 TYPE_12__* jpeg_std_error (struct jpeg_error_mgr*) ;
 int jpeg_stdio_src (struct jpeg_decompress_struct*,int *) ;
 scalar_t__ memsrc ;
 char* outfilename ;
 int parse_switches (struct jpeg_decompress_struct*,int,char**,int ,int ) ;
 int print_text_marker ;
 scalar_t__* progname ;
 int * read_stdin () ;
 scalar_t__ realloc (unsigned char*,unsigned long) ;
 int requested_fmt ;
 scalar_t__ skip ;
 int skip_end ;
 int skip_start ;
 int start_progress_monitor (int ,struct cdjpeg_progress_mgr*) ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int stub1 (struct jpeg_decompress_struct*,TYPE_2__*) ;
 int stub2 (struct jpeg_decompress_struct*,TYPE_2__*,void*) ;
 int stub3 (struct jpeg_decompress_struct*,TYPE_2__*,void*) ;
 int stub4 (struct jpeg_decompress_struct*,TYPE_2__*) ;
 int stub5 (struct jpeg_decompress_struct*,TYPE_2__*) ;
 int stub6 (struct jpeg_decompress_struct*,TYPE_2__*,void*) ;
 int stub7 (struct jpeg_decompress_struct*,TYPE_2__*) ;
 int stub8 (struct jpeg_decompress_struct*,TYPE_2__*,void*) ;
 int stub9 (struct jpeg_decompress_struct*,TYPE_2__*) ;
 int usage () ;
 int * write_stdout () ;

int
main(int argc, char **argv)
{
  struct jpeg_decompress_struct cinfo;
  struct jpeg_error_mgr jerr;



  int file_index;
  djpeg_dest_ptr dest_mgr = ((void*)0);
  FILE *input_file;
  FILE *output_file;
  unsigned char *inbuffer = ((void*)0);
  unsigned long insize = 0;
  JDIMENSION num_scanlines;






  progname = argv[0];
  if (progname == ((void*)0) || progname[0] == 0)
    progname = "djpeg";


  cinfo.err = jpeg_std_error(&jerr);
  jpeg_create_decompress(&cinfo);

  jerr.addon_message_table = cdjpeg_message_table;
  jerr.first_addon_message = JMSG_FIRSTADDONCODE;
  jerr.last_addon_message = JMSG_LASTADDONCODE;







  jpeg_set_marker_processor(&cinfo, JPEG_COM, print_text_marker);
  jpeg_set_marker_processor(&cinfo, JPEG_APP0 + 12, print_text_marker);
  file_index = parse_switches(&cinfo, argc, argv, 0, FALSE);
  if (file_index < argc - 1) {
    fprintf(stderr, "%s: only one input file\n", progname);
    usage();
  }



  if (file_index < argc) {
    if ((input_file = fopen(argv[file_index], READ_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s\n", progname, argv[file_index]);
      exit(EXIT_FAILURE);
    }
  } else {

    input_file = read_stdin();
  }


  if (outfilename != ((void*)0)) {
    if ((output_file = fopen(outfilename, WRITE_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s\n", progname, outfilename);
      exit(EXIT_FAILURE);
    }
  } else {

    output_file = write_stdout();
  }
    jpeg_stdio_src(&cinfo, input_file);


  (void)jpeg_read_header(&cinfo, TRUE);


  file_index = parse_switches(&cinfo, argc, argv, 0, TRUE);




  switch (requested_fmt) {
  default:
    ERREXIT(&cinfo, JERR_UNSUPPORTED_FORMAT);
    break;
  }
  dest_mgr->output_file = output_file;


  (void)jpeg_start_decompress(&cinfo);


  if (skip) {
    JDIMENSION tmp;





    if (skip_end > cinfo.output_height - 1) {
      fprintf(stderr, "%s: skip region exceeds image height %d\n", progname,
              cinfo.output_height);
      exit(EXIT_FAILURE);
    }




    tmp = cinfo.output_height;
    cinfo.output_height -= (skip_end - skip_start + 1);
    (*dest_mgr->start_output) (&cinfo, dest_mgr);
    cinfo.output_height = tmp;


    while (cinfo.output_scanline < skip_start) {
      num_scanlines = jpeg_read_scanlines(&cinfo, dest_mgr->buffer,
                                          dest_mgr->buffer_height);
      (*dest_mgr->put_pixel_rows) (&cinfo, dest_mgr, num_scanlines);
    }
    jpeg_skip_scanlines(&cinfo, skip_end - skip_start + 1);
    while (cinfo.output_scanline < cinfo.output_height) {
      num_scanlines = jpeg_read_scanlines(&cinfo, dest_mgr->buffer,
                                          dest_mgr->buffer_height);
      (*dest_mgr->put_pixel_rows) (&cinfo, dest_mgr, num_scanlines);
    }


  } else if (crop) {
    JDIMENSION tmp;




    if (crop_x + crop_width > cinfo.output_width ||
        crop_y + crop_height > cinfo.output_height) {
      fprintf(stderr, "%s: crop dimensions exceed image dimensions %d x %d\n",
              progname, cinfo.output_width, cinfo.output_height);
      exit(EXIT_FAILURE);
    }

    jpeg_crop_scanline(&cinfo, &crop_x, &crop_width);
    if (dest_mgr->calc_buffer_dimensions)
      (*dest_mgr->calc_buffer_dimensions) (&cinfo, dest_mgr);
    else
      ERREXIT(&cinfo, JERR_UNSUPPORTED_FORMAT);




    tmp = cinfo.output_height;
    cinfo.output_height = crop_height;
    (*dest_mgr->start_output) (&cinfo, dest_mgr);
    cinfo.output_height = tmp;


    jpeg_skip_scanlines(&cinfo, crop_y);
    while (cinfo.output_scanline < crop_y + crop_height) {
      num_scanlines = jpeg_read_scanlines(&cinfo, dest_mgr->buffer,
                                          dest_mgr->buffer_height);
      (*dest_mgr->put_pixel_rows) (&cinfo, dest_mgr, num_scanlines);
    }
    jpeg_skip_scanlines(&cinfo, cinfo.output_height - crop_y - crop_height);


  } else {

    (*dest_mgr->start_output) (&cinfo, dest_mgr);


    while (cinfo.output_scanline < cinfo.output_height) {
      num_scanlines = jpeg_read_scanlines(&cinfo, dest_mgr->buffer,
                                          dest_mgr->buffer_height);
      (*dest_mgr->put_pixel_rows) (&cinfo, dest_mgr, num_scanlines);
    }
  }
  if (icc_filename != ((void*)0)) {
    FILE *icc_file;
    JOCTET *icc_profile;
    unsigned int icc_len;

    if ((icc_file = fopen(icc_filename, WRITE_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s\n", progname, icc_filename);
      exit(EXIT_FAILURE);
    }
    if (jpeg_read_icc_profile(&cinfo, &icc_profile, &icc_len)) {
      if (fwrite(icc_profile, icc_len, 1, icc_file) < 1) {
        fprintf(stderr, "%s: can't read ICC profile from %s\n", progname,
                icc_filename);
        free(icc_profile);
        fclose(icc_file);
        exit(EXIT_FAILURE);
      }
      free(icc_profile);
      fclose(icc_file);
    } else if (cinfo.err->msg_code != JWRN_BOGUS_ICC)
      fprintf(stderr, "%s: no ICC profile data in JPEG file\n", progname);
  }





  (*dest_mgr->finish_output) (&cinfo, dest_mgr);
  (void)jpeg_finish_decompress(&cinfo);
  jpeg_destroy_decompress(&cinfo);


  if (input_file != stdin)
    fclose(input_file);
  if (output_file != stdout)
    fclose(output_file);





  if (memsrc && inbuffer != ((void*)0))
    free(inbuffer);


  exit(jerr.num_warnings ? EXIT_WARNING : EXIT_SUCCESS);
  return 0;
}
