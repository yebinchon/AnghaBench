
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERREXIT (char*) ;
 int printf (char*,...) ;
 int read_1_byte () ;
 unsigned int read_2_bytes () ;

__attribute__((used)) static void
process_SOFn(int marker)
{
  unsigned int length;
  unsigned int image_height, image_width;
  int data_precision, num_components;
  const char *process;
  int ci;

  length = read_2_bytes();

  data_precision = read_1_byte();
  image_height = read_2_bytes();
  image_width = read_2_bytes();
  num_components = read_1_byte();

  switch (marker) {
  case 140: process = "Baseline"; break;
  case 139: process = "Extended sequential"; break;
  case 133: process = "Progressive"; break;
  case 132: process = "Lossless"; break;
  case 131: process = "Differential sequential"; break;
  case 130: process = "Differential progressive"; break;
  case 129: process = "Differential lossless"; break;
  case 128: process = "Extended sequential, arithmetic coding"; break;
  case 138: process = "Progressive, arithmetic coding"; break;
  case 137: process = "Lossless, arithmetic coding"; break;
  case 136: process = "Differential sequential, arithmetic coding"; break;
  case 135:
    process = "Differential progressive, arithmetic coding"; break;
  case 134: process = "Differential lossless, arithmetic coding"; break;
  default: process = "Unknown"; break;
  }

  printf("JPEG image is %uw * %uh, %d color components, %d bits per sample\n",
         image_width, image_height, num_components, data_precision);
  printf("JPEG process: %s\n", process);

  if (length != (unsigned int)(8 + num_components * 3))
    ERREXIT("Bogus SOF marker length");

  for (ci = 0; ci < num_components; ci++) {
    (void)read_1_byte();
    (void)read_1_byte();
    (void)read_1_byte();
  }
}
