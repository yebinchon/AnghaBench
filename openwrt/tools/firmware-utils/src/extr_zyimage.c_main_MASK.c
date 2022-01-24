#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct signature   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sign ;
typedef  int /*<<< orphan*/  oldsign ;
struct signature {char const* magic; unsigned int device_id; char* firmware_version; unsigned int crc32; } ;
struct TYPE_5__ {char* member_0; } ;
struct TYPE_4__ {char member_0; char member_1; char member_2; char member_3; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct signature*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (int,char**,char const*) ; 
 int /*<<< orphan*/ * optarg ; 
 size_t optind ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

int FUNC16(int argc, char *argv[]) {
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
    FUNC15(argv[0]);

  optString = "v:d:h";
  opt = FUNC10( argc, argv, optString );
  while( opt != -1 ) {
    switch( opt ) {
      case 'v':
        if (optarg == NULL)
          FUNC15(argv[0]);
        FUNC13(sign.firmware_version, optarg, sizeof(sign.firmware_version)-1);
       sign.firmware_version[sizeof(sign.firmware_version)-1]='\0'; /* Make sure that string is terminated correctly */
        break;

      case 'd':
        sign.device_id = FUNC1(optarg);
        if (sign.device_id == 0)
          sign.device_id = (int)FUNC14(optarg, NULL, 16);
        break;

      case '?':
      case 'h':
        FUNC15(argv[0]);
        break;

      default:
        break;
    }

    opt = FUNC10( argc, argv, optString );
  }

  FUNC3();

  filename=argv[optind];
  if (FUNC0(filename, W_OK) || FUNC0(filename, R_OK))
  {
    FUNC11("Not open input file %s\n", filename);
    FUNC4(1);
  }
  f = FUNC6(argv[optind], "r+");
  if (f != NULL)
  {
    FUNC8(f, sizeof(sign)*-1, SEEK_END);
    FUNC7(&oldsign, sizeof(oldsign), 1, f);

    if (FUNC12(oldsign.magic,"ZNBG", sizeof(oldsign.magic)) == 0 )
    {
      FUNC11("Image is already signed as:\nDevice ID: 0x%08x\nFirmware version: %s\nImage CRC32: 0x%x\n", oldsign.device_id, oldsign.firmware_version, oldsign.crc32);
      FUNC4(0);
    }

    FUNC8(f, 0, SEEK_SET);
    sign.crc32 = FUNC2(f);
    FUNC9(&sign, sizeof(sign), 1, f);
    FUNC5(f);

    FUNC11("Image signed as:\nDevice ID: 0x%08x\nFirmware version: %s\nImage CRC32: 0x%x\n", sign.device_id, sign.firmware_version, sign.crc32);
  }
  return 0;
}