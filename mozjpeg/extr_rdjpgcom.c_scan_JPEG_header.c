
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERREXIT (char*) ;
 scalar_t__ M_SOI ;

 scalar_t__ first_marker () ;
 int next_marker () ;
 int printf (char*) ;
 int process_COM (int) ;
 int process_SOFn (int) ;
 int skip_variable () ;

__attribute__((used)) static int
scan_JPEG_header(int verbose, int raw)
{
  int marker;


  if (first_marker() != M_SOI)
    ERREXIT("Expected SOI marker first");


  for (;;) {
    marker = next_marker();
    switch (marker) {



    case 141:
    case 140:
    case 134:
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 139:
    case 138:
    case 137:
    case 136:
    case 135:
      if (verbose)
        process_SOFn(marker);
      else
        skip_variable();
      break;

    case 128:
      return marker;

    case 142:
      return marker;

    case 143:
      process_COM(raw);
      break;

    case 144:



      if (verbose) {
        printf("APP12 contains:\n");
        process_COM(raw);
      } else
        skip_variable();
      break;

    default:
      skip_variable();
      break;
    }
  }
}
