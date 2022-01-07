; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw.c_inspect_fw.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw.c_inspect_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.fw_header = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@MD5SUM_LEN = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@inspect_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"no memory for buffer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"File name\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"File size\00", align 1
@HEADER_VERSION_V1 = common dso_local global i32 0, align 4
@HEADER_VERSION_V2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"file does not seem to have V1/V2 header!\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Version 1 Header size\00", align 1
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
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Vendor name\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Firmware version\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Hardware ID\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Hardware Revision\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Region code\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Kernel data offset\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Kernel data length\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Kernel load address\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Kernel entry point\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Rootfs data offset\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Rootfs data length\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Boot loader data offset\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"Boot loader data length\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Total firmware length\00", align 1
@extract = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [10 x i8] c"%s-kernel\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Extracting kernel to \22%s\22...\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"error in fwrite(): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [21 x i8] c"error in fopen(): %s\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"%s-rootfs\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Extracting rootfs to \22%s\22...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @inspect_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inspect_fw() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.fw_header*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @MD5SUM_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 0), align 8
  %14 = call i8* @malloc(i32 %13)
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %0
  %18 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %287

19:                                               ; preds = %0
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @read_to_buf(%struct.TYPE_3__* @inspect_info, i8* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %284

25:                                               ; preds = %19
  %26 = load i8*, i8** %1, align 8
  %27 = bitcast i8* %26 to %struct.fw_header*
  store %struct.fw_header* %27, %struct.fw_header** %2, align 8
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 1), align 8
  %29 = call i32 @inspect_fw_pstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 0), align 8
  %31 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %33 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ntohl(i32 %34)
  %36 = load i32, i32* @HEADER_VERSION_V1, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %25
  %39 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %40 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ntohl(i32 %41)
  %43 = load i32, i32* @HEADER_VERSION_V2, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %284

47:                                               ; preds = %38, %25
  %48 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 96)
  %49 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %50 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %49, i32 0, i32 18
  %51 = load i32*, i32** %50, align 8
  %52 = mul nuw i64 4, %9
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i32* %11, i32* %51, i32 %53)
  %55 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %56 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohl(i32 %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %47
  %61 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %62 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %61, i32 0, i32 18
  %63 = load i32*, i32** %62, align 8
  %64 = load i32*, i32** @md5salt_normal, align 8
  %65 = mul nuw i64 4, %9
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(i32* %63, i32* %64, i32 %66)
  br label %76

68:                                               ; preds = %47
  %69 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %70 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %69, i32 0, i32 18
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** @md5salt_boot, align 8
  %73 = mul nuw i64 4, %9
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memcpy(i32* %71, i32* %72, i32 %74)
  br label %76

76:                                               ; preds = %68, %60
  %77 = load i8*, i8** %1, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 0), align 8
  %79 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %80 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %79, i32 0, i32 18
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @get_md5(i8* %77, i32 %78, i32* %81)
  %83 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %84 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %83, i32 0, i32 18
  %85 = load i32*, i32** %84, align 8
  %86 = mul nuw i64 4, %9
  %87 = trunc i64 %86 to i32
  %88 = call i64 @memcmp(i32* %11, i32* %85, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %76
  %91 = call i32 @inspect_fw_pmd5sum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %92 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %93 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %92, i32 0, i32 18
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @inspect_fw_pmd5sum(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  br label %98

96:                                               ; preds = %76
  %97 = call i32 @inspect_fw_pmd5sum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %90
  %99 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %100 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ntohl(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %106 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %104, %98
  %110 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %111 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %110, i32 0, i32 17
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @inspect_fw_pmd5sum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32* %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %114 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %115 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ntohl(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %121 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %119, %109
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %126 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %127 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @inspect_fw_pstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* %128)
  %130 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %131 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %130, i32 0, i32 5
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @inspect_fw_pstr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %132)
  %134 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %135 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @ntohl(i32 %136)
  %138 = call i32 @inspect_fw_phex(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %137)
  %139 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %140 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ntohl(i32 %141)
  %143 = call i32 @inspect_fw_phex(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %142)
  %144 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %145 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @ntohl(i32 %146)
  %148 = call i32 @inspect_fw_phex(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %147)
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %150 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %151 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ntohl(i32 %152)
  %154 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 %153)
  %155 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %156 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ntohl(i32 %157)
  %159 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 %158)
  %160 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %161 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %160, i32 0, i32 11
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ntohl(i32 %162)
  %164 = call i32 @inspect_fw_phex(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %163)
  %165 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %166 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %165, i32 0, i32 12
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ntohl(i32 %167)
  %169 = call i32 @inspect_fw_phex(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %168)
  %170 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %171 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %170, i32 0, i32 13
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ntohl(i32 %172)
  %174 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %173)
  %175 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %176 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %175, i32 0, i32 14
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @ntohl(i32 %177)
  %179 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 %178)
  %180 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %181 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %180, i32 0, i32 15
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ntohl(i32 %182)
  %184 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 %183)
  %185 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %186 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ntohl(i32 %187)
  %189 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i32 %188)
  %190 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %191 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %190, i32 0, i32 16
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @ntohl(i32 %192)
  %194 = call i32 @inspect_fw_phexdec(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 %193)
  %195 = load i64, i64* @extract, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %283

197:                                              ; preds = %124
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %199 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 1), align 8
  %200 = call i32 @strlen(i8* %199)
  %201 = add nsw i32 %200, 8
  %202 = call i8* @malloc(i32 %201)
  store i8* %202, i8** %7, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 1), align 8
  %205 = call i32 @sprintf(i8* %203, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* %204)
  %206 = load i8*, i8** %7, align 8
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i8* %206)
  %208 = load i8*, i8** %7, align 8
  %209 = call i32* @fopen(i8* %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store i32* %209, i32** %6, align 8
  %210 = load i32*, i32** %6, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %234

212:                                              ; preds = %197
  %213 = load i8*, i8** %1, align 8
  %214 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %215 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ntohl(i32 %216)
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %213, i64 %218
  %220 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %221 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %220, i32 0, i32 10
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @ntohl(i32 %222)
  %224 = load i32*, i32** %6, align 8
  %225 = call i32 @fwrite(i8* %219, i32 %223, i32 1, i32* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %212
  %228 = load i32, i32* @errno, align 4
  %229 = call i32 @strerror(i32 %228)
  %230 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %227, %212
  %232 = load i32*, i32** %6, align 8
  %233 = call i32 @fclose(i32* %232)
  br label %238

234:                                              ; preds = %197
  %235 = load i32, i32* @errno, align 4
  %236 = call i32 @strerror(i32 %235)
  %237 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %234, %231
  %239 = load i8*, i8** %7, align 8
  %240 = call i32 @free(i8* %239)
  %241 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 1), align 8
  %242 = call i32 @strlen(i8* %241)
  %243 = add nsw i32 %242, 8
  %244 = call i8* @malloc(i32 %243)
  store i8* %244, i8** %7, align 8
  %245 = load i8*, i8** %7, align 8
  %246 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @inspect_info, i32 0, i32 1), align 8
  %247 = call i32 @sprintf(i8* %245, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* %246)
  %248 = load i8*, i8** %7, align 8
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0), i8* %248)
  %250 = load i8*, i8** %7, align 8
  %251 = call i32* @fopen(i8* %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store i32* %251, i32** %6, align 8
  %252 = load i32*, i32** %6, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %276

254:                                              ; preds = %238
  %255 = load i8*, i8** %1, align 8
  %256 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %257 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ntohl(i32 %258)
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %255, i64 %260
  %262 = load %struct.fw_header*, %struct.fw_header** %2, align 8
  %263 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %262, i32 0, i32 14
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @ntohl(i32 %264)
  %266 = load i32*, i32** %6, align 8
  %267 = call i32 @fwrite(i8* %261, i32 %265, i32 1, i32* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %254
  %270 = load i32, i32* @errno, align 4
  %271 = call i32 @strerror(i32 %270)
  %272 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %269, %254
  %274 = load i32*, i32** %6, align 8
  %275 = call i32 @fclose(i32* %274)
  br label %280

276:                                              ; preds = %238
  %277 = load i32, i32* @errno, align 4
  %278 = call i32 @strerror(i32 %277)
  %279 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %276, %273
  %281 = load i8*, i8** %7, align 8
  %282 = call i32 @free(i8* %281)
  br label %283

283:                                              ; preds = %280, %124
  br label %284

284:                                              ; preds = %283, %45, %24
  %285 = load i8*, i8** %1, align 8
  %286 = call i32 @free(i8* %285)
  br label %287

287:                                              ; preds = %284, %17
  %288 = load i32, i32* %5, align 4
  %289 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %289)
  ret i32 %288
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @ERR(i8*, ...) #2

declare dso_local i32 @read_to_buf(%struct.TYPE_3__*, i8*) #2

declare dso_local i32 @inspect_fw_pstr(i8*, i8*) #2

declare dso_local i32 @inspect_fw_phexdec(i8*, i32) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @get_md5(i8*, i32, i32*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @inspect_fw_pmd5sum(i8*, i32*, i8*) #2

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
