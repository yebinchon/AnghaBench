; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw2.c_inspect_fw.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw2.c_inspect_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.board_info = type { i32 }
%struct.fw_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@MD5SUM_LEN = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@inspect_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"no memory for buffer!\0A\00", align 1
@custom_board = common dso_local global %struct.board_info zeroinitializer, align 4
@FLAG_LE_KERNEL_LA_EP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"File name\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"File size\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"file does not seem to have V2/V3 header!\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Version 2 Header size\00", align 1
@md5salt_normal = common dso_local global i32* null, align 8
@md5salt_boot = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Header MD5Sum1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"(*ERROR*)\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"          --> expected\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"(ok)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Unknown value 2\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Header MD5Sum2\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"(purpose yet unknown, unchecked here)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Unknown value 3\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Unknown value 4\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Unknown value 5\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Firmware version\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Hardware ID\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Hardware Revision\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Additional HW Version\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"%-23s: %d.%d.%d-%d.%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Software version\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Kernel data offset\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Kernel data length\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Kernel load address\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Kernel entry point\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Rootfs data offset\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"Rootfs data length\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Boot loader data offset\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Boot loader data length\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Total firmware length\00", align 1
@extract = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [10 x i8] c"%s-kernel\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Extracting kernel to \22%s\22...\0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"error in fwrite(): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [21 x i8] c"error in fopen(): %s\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"%s-rootfs\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"Extracting rootfs to \22%s\22...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @inspect_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inspect_fw() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.fw_header*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @MD5SUM_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 0), align 8
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %1, align 8
  %16 = load i8*, i8** %1, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %0
  %19 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %334

20:                                               ; preds = %0
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @read_to_buf(%struct.TYPE_3__* @inspect_info, i8* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %331

26:                                               ; preds = %20
  %27 = load i8*, i8** %1, align 8
  %28 = bitcast i8* %27 to %struct.fw_header*
  store %struct.fw_header* %28, %struct.fw_header** %2, align 8
  store %struct.board_info* @custom_board, %struct.board_info** %5, align 8
  %29 = load %struct.board_info*, %struct.board_info** %5, align 8
  %30 = getelementptr inbounds %struct.board_info, %struct.board_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FLAG_LE_KERNEL_LA_EP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %37 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @bswap_32(i32 %38)
  %40 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %41 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %43 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bswap_32(i32 %44)
  %46 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %47 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %35, %26
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 1), align 8
  %50 = call i32 @inspect_fw_pstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 0), align 8
  %52 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %54 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ntohl(i32 %55)
  %57 = call i32 @bswap_32(i32 %56)
  switch i32 %57, label %59 [
    i32 2, label %58
    i32 3, label %58
  ]

58:                                               ; preds = %48, %48
  br label %61

59:                                               ; preds = %48
  %60 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %331

61:                                               ; preds = %58
  %62 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 112)
  %63 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %64 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %63, i32 0, i32 24
  %65 = load i32*, i32** %64, align 8
  %66 = mul nuw i64 4, %10
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(i32* %12, i32* %65, i32 %67)
  %69 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %70 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ntohl(i32 %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %61
  %75 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %76 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %75, i32 0, i32 24
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** @md5salt_normal, align 8
  %79 = mul nuw i64 4, %10
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i32* %77, i32* %78, i32 %80)
  br label %90

82:                                               ; preds = %61
  %83 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %84 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %83, i32 0, i32 24
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** @md5salt_boot, align 8
  %87 = mul nuw i64 4, %10
  %88 = trunc i64 %87 to i32
  %89 = call i32 @memcpy(i32* %85, i32* %86, i32 %88)
  br label %90

90:                                               ; preds = %82, %74
  %91 = load i8*, i8** %1, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 0), align 8
  %93 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %94 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %93, i32 0, i32 24
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @get_md5(i8* %91, i32 %92, i32* %95)
  %97 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %98 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %97, i32 0, i32 24
  %99 = load i32*, i32** %98, align 8
  %100 = mul nuw i64 4, %10
  %101 = trunc i64 %100 to i32
  %102 = call i64 @memcmp(i32* %12, i32* %99, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %90
  %105 = call i32 @inspect_fw_pmd5sum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %106 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %107 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %106, i32 0, i32 24
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @inspect_fw_pmd5sum(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %108, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  br label %112

110:                                              ; preds = %90
  %111 = call i32 @inspect_fw_pmd5sum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %104
  %113 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %114 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ntohl(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %120 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %118, %112
  %124 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %125 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %124, i32 0, i32 23
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @inspect_fw_pmd5sum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32* %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %128 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %129 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ntohl(i32 %130)
  %132 = icmp ne i32 %131, -1
  br i1 %132, label %133, label %138

133:                                              ; preds = %123
  %134 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %135 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %133, %123
  %139 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %140 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ntohs(i32 %141)
  %143 = icmp ne i32 %142, 21930
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %146 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %144, %138
  %150 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %151 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 165
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %156 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %154, %149
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %161 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %162 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %161, i32 0, i32 8
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @inspect_fw_pstr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8* %163)
  %165 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %166 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ntohl(i32 %167)
  %169 = call i32 @inspect_fw_phex(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %168)
  %170 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %171 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ntohl(i32 %172)
  %174 = call i32 @inspect_fw_phex(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %173)
  %175 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %176 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %175, i32 0, i32 11
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @ntohl(i32 %177)
  %179 = call i32 @inspect_fw_phex(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %178)
  %180 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %181 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %180, i32 0, i32 12
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %184 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %183, i32 0, i32 13
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %187 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %186, i32 0, i32 14
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %190 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %189, i32 0, i32 15
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %193 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %192, i32 0, i32 16
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %182, i32 %185, i32 %188, i32 %191, i32 %194)
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %197 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %198 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %197, i32 0, i32 17
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @ntohl(i32 %199)
  %201 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %200)
  %202 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %203 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %202, i32 0, i32 18
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ntohl(i32 %204)
  %206 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %205)
  %207 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %208 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @ntohl(i32 %209)
  %211 = call i32 @inspect_fw_phex(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 %210)
  %212 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %213 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ntohl(i32 %214)
  %216 = call i32 @inspect_fw_phex(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %215)
  %217 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %218 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %217, i32 0, i32 19
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @ntohl(i32 %219)
  %221 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 %220)
  %222 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %223 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %222, i32 0, i32 20
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ntohl(i32 %224)
  %226 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), i32 %225)
  %227 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %228 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %227, i32 0, i32 21
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @ntohl(i32 %229)
  %231 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i32 %230)
  %232 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %233 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @ntohl(i32 %234)
  %236 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 %235)
  %237 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %238 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %237, i32 0, i32 22
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ntohl(i32 %239)
  %241 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i32 %240)
  %242 = load i64, i64* @extract, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %330

244:                                              ; preds = %159
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %246 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 1), align 8
  %247 = call i32 @strlen(i8* %246)
  %248 = add nsw i32 %247, 8
  %249 = call i8* @malloc(i32 %248)
  store i8* %249, i8** %8, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 1), align 8
  %252 = call i32 @sprintf(i8* %250, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8* %251)
  %253 = load i8*, i8** %8, align 8
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i8* %253)
  %255 = load i8*, i8** %8, align 8
  %256 = call i32* @fopen(i8* %255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  store i32* %256, i32** %7, align 8
  %257 = load i32*, i32** %7, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %281

259:                                              ; preds = %244
  %260 = load i8*, i8** %1, align 8
  %261 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %262 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %261, i32 0, i32 17
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @ntohl(i32 %263)
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %260, i64 %265
  %267 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %268 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %267, i32 0, i32 18
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @ntohl(i32 %269)
  %271 = load i32*, i32** %7, align 8
  %272 = call i32 @fwrite(i8* %266, i32 %270, i32 1, i32* %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %259
  %275 = load i32, i32* @errno, align 4
  %276 = call i32 @strerror(i32 %275)
  %277 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0), i32 %276)
  br label %278

278:                                              ; preds = %274, %259
  %279 = load i32*, i32** %7, align 8
  %280 = call i32 @fclose(i32* %279)
  br label %285

281:                                              ; preds = %244
  %282 = load i32, i32* @errno, align 4
  %283 = call i32 @strerror(i32 %282)
  %284 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %281, %278
  %286 = load i8*, i8** %8, align 8
  %287 = call i32 @free(i8* %286)
  %288 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 1), align 8
  %289 = call i32 @strlen(i8* %288)
  %290 = add nsw i32 %289, 8
  %291 = call i8* @malloc(i32 %290)
  store i8* %291, i8** %8, align 8
  %292 = load i8*, i8** %8, align 8
  %293 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 1), align 8
  %294 = call i32 @sprintf(i8* %292, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8* %293)
  %295 = load i8*, i8** %8, align 8
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0), i8* %295)
  %297 = load i8*, i8** %8, align 8
  %298 = call i32* @fopen(i8* %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  store i32* %298, i32** %7, align 8
  %299 = load i32*, i32** %7, align 8
  %300 = icmp ne i32* %299, null
  br i1 %300, label %301, label %323

301:                                              ; preds = %285
  %302 = load i8*, i8** %1, align 8
  %303 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %304 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %303, i32 0, i32 19
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @ntohl(i32 %305)
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* %302, i64 %307
  %309 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %310 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %309, i32 0, i32 20
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @ntohl(i32 %311)
  %313 = load i32*, i32** %7, align 8
  %314 = call i32 @fwrite(i8* %308, i32 %312, i32 1, i32* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %301
  %317 = load i32, i32* @errno, align 4
  %318 = call i32 @strerror(i32 %317)
  %319 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0), i32 %318)
  br label %320

320:                                              ; preds = %316, %301
  %321 = load i32*, i32** %7, align 8
  %322 = call i32 @fclose(i32* %321)
  br label %327

323:                                              ; preds = %285
  %324 = load i32, i32* @errno, align 4
  %325 = call i32 @strerror(i32 %324)
  %326 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %323, %320
  %328 = load i8*, i8** %8, align 8
  %329 = call i32 @free(i8* %328)
  br label %330

330:                                              ; preds = %327, %159
  br label %331

331:                                              ; preds = %330, %59, %25
  %332 = load i8*, i8** %1, align 8
  %333 = call i32 @free(i8* %332)
  br label %334

334:                                              ; preds = %331, %18
  %335 = load i32, i32* %6, align 4
  %336 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %336)
  ret i32 %335
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @ERR(i8*, ...) #2

declare dso_local i32 @read_to_buf(%struct.TYPE_3__*, i8*) #2

declare dso_local i32 @bswap_32(i32) #2

declare dso_local i32 @inspect_fw_pstr(i8*, i8*) #2

declare dso_local i32 @inspect_fw_phexdec(i8*, i32) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @get_md5(i8*, i32, i32*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @inspect_fw_pmd5sum(i8*, i32*, i8*) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @inspect_fw_phex(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
