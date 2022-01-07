
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct signature TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sign ;
typedef int oldsign ;
struct signature {char const* magic; unsigned int device_id; char* firmware_version; unsigned int crc32; } ;
struct TYPE_5__ {char* member_0; } ;
struct TYPE_4__ {char member_0; char member_1; char member_2; char member_3; } ;
typedef int FILE ;


 int R_OK ;
 int SEEK_END ;
 int SEEK_SET ;
 int W_OK ;
 scalar_t__ access (char*,int ) ;
 unsigned int atoi (int *) ;
 int chksum_crc32 (int *) ;
 int chksum_crc32gentab () ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (struct signature*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int fwrite (TYPE_3__*,int,int,int *) ;
 int getopt (int,char**,char const*) ;
 int * optarg ;
 size_t optind ;
 int printf (char*,...) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strncpy (char*,int *,int) ;
 scalar_t__ strtol (int *,int *,int) ;
 int usage (char*) ;

int main(int argc, char *argv[]) {
  struct signature
  {
    const char magic[4];
    unsigned int device_id;
    char firmware_version[48];
    unsigned int crc32;
  }
  sign =
  {
    { 'Z', 'N', 'B', 'G' },
    1,
    { "V.1.0.0(1.0.0)" },
    0
  };
  FILE *f;
  struct signature oldsign;
  char *filename;
  static const char *optString;
  int opt;

  if (argc < 1)
    usage(argv[0]);

  optString = "v:d:h";
  opt = getopt( argc, argv, optString );
  while( opt != -1 ) {
    switch( opt ) {
      case 'v':
        if (optarg == ((void*)0))
          usage(argv[0]);
        strncpy(sign.firmware_version, optarg, sizeof(sign.firmware_version)-1);
       sign.firmware_version[sizeof(sign.firmware_version)-1]='\0';
        break;

      case 'd':
        sign.device_id = atoi(optarg);
        if (sign.device_id == 0)
          sign.device_id = (int)strtol(optarg, ((void*)0), 16);
        break;

      case '?':
      case 'h':
        usage(argv[0]);
        break;

      default:
        break;
    }

    opt = getopt( argc, argv, optString );
  }

  chksum_crc32gentab();

  filename=argv[optind];
  if (access(filename, W_OK) || access(filename, R_OK))
  {
    printf("Not open input file %s\n", filename);
    exit(1);
  }
  f = fopen(argv[optind], "r+");
  if (f != ((void*)0))
  {
    fseek(f, sizeof(sign)*-1, SEEK_END);
    fread(&oldsign, sizeof(oldsign), 1, f);

    if (strncmp(oldsign.magic,"ZNBG", sizeof(oldsign.magic)) == 0 )
    {
      printf("Image is already signed as:\nDevice ID: 0x%08x\nFirmware version: %s\nImage CRC32: 0x%x\n", oldsign.device_id, oldsign.firmware_version, oldsign.crc32);
      exit(0);
    }

    fseek(f, 0, SEEK_SET);
    sign.crc32 = chksum_crc32(f);
    fwrite(&sign, sizeof(sign), 1, f);
    fclose(f);

    printf("Image signed as:\nDevice ID: 0x%08x\nFirmware version: %s\nImage CRC32: 0x%x\n", sign.device_id, sign.firmware_version, sign.crc32);
  }
  return 0;
}
