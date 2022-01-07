; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp8266/rboot/esptool2/extr_esptool2.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp8266/rboot/esptool2/extr_esptool2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"-bin\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-lib\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"-header\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@quieton = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"-debug\00", align 1
@debugon = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"-boot0\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"-boot1\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"-boot2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-qio\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"-qout\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"-dio\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"-dout\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"-256\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"-512\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"-1024\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"-2048\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"-4096\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"-20\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"-26.7\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"-40\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"-80\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"-iromchksum\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"esptool2 v2.0.0 - (c) 2015 Richard A Burton <richardaburton@gmail.com>\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"This program is licensed under the GPL v3.\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"See the file LICENSE for details.\0D\0A\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Error: Unrecognised option '%s'.\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Usage:\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"esptool2 -lib [options] <input_file> <output_file>\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"esptool2 -bin [options] <input_file> <output_file> <elf_section>...\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [73 x i8] c"esptool2 -header [options] <input_file> <output_file> <elf_section>...\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"  -lib\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"       Export the sdk library (.irom0.text), for a standalone app.\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"       e.g. esptool2 -elf esp8266_iot.out out.bin\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"  -header\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [58 x i8] c"       Export elf sections as bytes to a C header file.\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [70 x i8] c"       e.g. esptool2 -elf esp8266_iot.out out.h .text .data .rodata\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"  -bin\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [79 x i8] c"       Create binary program image, for standalone and bootloaded apps, with\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [75 x i8] c"       specified elf sections. Includes sdk library for bootloaded apps.\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [72 x i8] c"       e.g. esptool2 -bin esp8266_iot.out out.bin .text .data .rodata\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"       Options:\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [60 x i8] c"        bootloader: -boot0 -boot1 -boot2 (default -boot0)\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [66 x i8] c"          -boot0 = standalone app, not built for bootloader use\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [47 x i8] c"          -boot1 = built for bootloader v1.1\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [69 x i8] c"          -boot2 = built for bootloader v1.2+ (use for rBoot roms)\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [77 x i8] c"          (elf file must have been linked appropriately for chosen option)\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [68 x i8] c"        spi size (kb): -256 -512 -1024 -2048 -4096 (default -512)\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [57 x i8] c"        spi mode: -qio -qout -dio -dout (default -qio)\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c"        spi speed: -20 -26.7 -40 -80 (default -40)\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [79 x i8] c"        include irom in checksum: -iromchksum (also needs enabling in rBoot)\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"General options:\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"  -quiet prints only error messages\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"  -debug print extra debug information\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [74 x i8] c"  -- no more options follow (needed if your elf file starts with a '-')\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Returns:\0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"   0 on success\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"  -1 on failure\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [66 x i8] c"Error: You must specify -bin OR -lib OR -header for build type.\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"Error: You cannot specify -quiet and -debug.\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"Error: Not enough arguments supplied.\0D\0A\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"Error: Too many arguments supplied.\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c".irom0.text\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"Successfully created '%s'.\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i8 -1, i8* %16, align 1
  store i8 -1, i8* %17, align 1
  store i8 0, i8* %18, align 1
  store i32 0, i32* %19, align 4
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %273, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %276

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  %33 = load i32, i32* %19, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %19, align 4
  br label %272

35:                                               ; preds = %24
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  %44 = load i32, i32* %19, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %19, align 4
  br label %271

46:                                               ; preds = %35
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  %55 = load i32, i32* %19, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %19, align 4
  br label %270

57:                                               ; preds = %46
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  store i32 1, i32* @quieton, align 4
  br label %269

66:                                               ; preds = %57
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  store i32 1, i32* @debugon, align 4
  br label %268

75:                                               ; preds = %66
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  store i32 0, i32* %15, align 4
  br label %267

84:                                               ; preds = %75
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  store i32 1, i32* %15, align 4
  br label %266

93:                                               ; preds = %84
  %94 = load i8**, i8*** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  store i32 2, i32* %15, align 4
  br label %265

102:                                              ; preds = %93
  %103 = load i8**, i8*** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  store i8 0, i8* %16, align 1
  br label %264

111:                                              ; preds = %102
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %111
  store i8 1, i8* %16, align 1
  br label %263

120:                                              ; preds = %111
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  store i8 2, i8* %16, align 1
  br label %262

129:                                              ; preds = %120
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %129
  store i8 3, i8* %16, align 1
  br label %261

138:                                              ; preds = %129
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %138
  store i8 1, i8* %17, align 1
  br label %260

147:                                              ; preds = %138
  %148 = load i8**, i8*** %5, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %147
  store i8 0, i8* %17, align 1
  br label %259

156:                                              ; preds = %147
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %156
  store i8 2, i8* %17, align 1
  br label %258

165:                                              ; preds = %156
  %166 = load i8**, i8*** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %165
  store i8 3, i8* %17, align 1
  br label %257

174:                                              ; preds = %165
  %175 = load i8**, i8*** %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %174
  store i8 4, i8* %17, align 1
  br label %256

183:                                              ; preds = %174
  %184 = load i8**, i8*** %5, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @strcmp(i8* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %183
  store i8 2, i8* %18, align 1
  br label %255

192:                                              ; preds = %183
  %193 = load i8**, i8*** %5, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strcmp(i8* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %192
  store i8 1, i8* %18, align 1
  br label %254

201:                                              ; preds = %192
  %202 = load i8**, i8*** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %201
  store i8 0, i8* %18, align 1
  br label %253

210:                                              ; preds = %201
  %211 = load i8**, i8*** %5, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @strcmp(i8* %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %210
  store i8 15, i8* %18, align 1
  br label %252

219:                                              ; preds = %210
  %220 = load i8**, i8*** %5, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %220, i64 %222
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %219
  store i32 1, i32* %14, align 4
  br label %251

228:                                              ; preds = %219
  %229 = load i8**, i8*** %5, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @strcmp(i8* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %228
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  br label %276

239:                                              ; preds = %228
  %240 = load i8**, i8*** %5, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 0
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 45
  br i1 %248, label %249, label %250

249:                                              ; preds = %239
  store i32 1, i32* %13, align 4
  br label %276

250:                                              ; preds = %239
  br label %276

251:                                              ; preds = %227
  br label %252

252:                                              ; preds = %251, %218
  br label %253

253:                                              ; preds = %252, %209
  br label %254

254:                                              ; preds = %253, %200
  br label %255

255:                                              ; preds = %254, %191
  br label %256

256:                                              ; preds = %255, %182
  br label %257

257:                                              ; preds = %256, %173
  br label %258

258:                                              ; preds = %257, %164
  br label %259

259:                                              ; preds = %258, %155
  br label %260

260:                                              ; preds = %259, %146
  br label %261

261:                                              ; preds = %260, %137
  br label %262

262:                                              ; preds = %261, %128
  br label %263

263:                                              ; preds = %262, %119
  br label %264

264:                                              ; preds = %263, %110
  br label %265

265:                                              ; preds = %264, %101
  br label %266

266:                                              ; preds = %265, %92
  br label %267

267:                                              ; preds = %266, %83
  br label %268

268:                                              ; preds = %267, %74
  br label %269

269:                                              ; preds = %268, %65
  br label %270

270:                                              ; preds = %269, %54
  br label %271

271:                                              ; preds = %270, %43
  br label %272

272:                                              ; preds = %271, %32
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %6, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %6, align 4
  br label %20

276:                                              ; preds = %250, %249, %236, %20
  %277 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0))
  %278 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0))
  %279 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0))
  %280 = load i32, i32* %13, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load i8**, i8*** %5, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i8* %287)
  store i32 -1, i32* %3, align 4
  br label %441

289:                                              ; preds = %276
  %290 = load i32, i32* %4, align 4
  %291 = icmp slt i32 %290, 2
  br i1 %291, label %292, label %330

292:                                              ; preds = %289
  %293 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %294 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i64 0, i64 0))
  %295 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.29, i64 0, i64 0))
  %296 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.30, i64 0, i64 0))
  %297 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %298 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  %299 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0))
  %300 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i64 0, i64 0))
  %301 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %302 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0))
  %303 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.36, i64 0, i64 0))
  %304 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.37, i64 0, i64 0))
  %305 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %306 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0))
  %307 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.39, i64 0, i64 0))
  %308 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.40, i64 0, i64 0))
  %309 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.41, i64 0, i64 0))
  %310 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0))
  %311 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.43, i64 0, i64 0))
  %312 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.44, i64 0, i64 0))
  %313 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.45, i64 0, i64 0))
  %314 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.46, i64 0, i64 0))
  %315 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.47, i64 0, i64 0))
  %316 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.48, i64 0, i64 0))
  %317 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.49, i64 0, i64 0))
  %318 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.50, i64 0, i64 0))
  %319 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.51, i64 0, i64 0))
  %320 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %321 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0))
  %322 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i64 0, i64 0))
  %323 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.54, i64 0, i64 0))
  %324 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i64 0, i64 0))
  %325 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %326 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0))
  %327 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0))
  %328 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i64 0, i64 0))
  %329 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %441

330:                                              ; preds = %289
  %331 = load i32, i32* %19, align 4
  %332 = icmp ne i32 %331, 1
  br i1 %332, label %333, label %335

333:                                              ; preds = %330
  %334 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.59, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %441

335:                                              ; preds = %330
  %336 = load i32, i32* @quieton, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %335
  %339 = load i32, i32* @debugon, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.60, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %441

343:                                              ; preds = %338, %335
  %344 = load i32, i32* %11, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %343
  %347 = load i32, i32* %6, align 4
  %348 = add nsw i32 %347, 2
  %349 = load i32, i32* %4, align 4
  %350 = icmp sgt i32 %348, %349
  br i1 %350, label %361, label %351

351:                                              ; preds = %346, %343
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* %12, align 4
  %354 = or i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %351
  %357 = load i32, i32* %6, align 4
  %358 = add nsw i32 %357, 3
  %359 = load i32, i32* %4, align 4
  %360 = icmp sgt i32 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %356, %346
  %362 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %441

363:                                              ; preds = %356, %351
  %364 = load i32, i32* %11, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %363
  %367 = load i32, i32* %6, align 4
  %368 = add nsw i32 %367, 2
  %369 = load i32, i32* %4, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %366
  %372 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.62, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %441

373:                                              ; preds = %366, %363
  br label %374

374:                                              ; preds = %373
  %375 = load i8**, i8*** %5, align 8
  %376 = load i32, i32* %6, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %6, align 4
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i8*, i8** %375, i64 %378
  %380 = load i8*, i8** %379, align 8
  store i8* %380, i8** %7, align 8
  %381 = load i8**, i8*** %5, align 8
  %382 = load i32, i32* %6, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %6, align 4
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8*, i8** %381, i64 %384
  %386 = load i8*, i8** %385, align 8
  store i8* %386, i8** %8, align 8
  %387 = load i32, i32* %4, align 4
  %388 = load i32, i32* %6, align 4
  %389 = sub nsw i32 %387, %388
  store i32 %389, i32* %9, align 4
  %390 = load i32, i32* %10, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %411

392:                                              ; preds = %374
  %393 = load i8*, i8** %7, align 8
  %394 = load i8*, i8** %8, align 8
  %395 = load i32, i32* %15, align 4
  %396 = load i8, i8* %16, align 1
  %397 = load i8, i8* %18, align 1
  %398 = load i8, i8* %17, align 1
  %399 = load i32, i32* %14, align 4
  %400 = load i8**, i8*** %5, align 8
  %401 = load i32, i32* %6, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8*, i8** %400, i64 %402
  %404 = load i32, i32* %9, align 4
  %405 = call i32 @CreateBinFile(i8* %393, i8* %394, i32 %395, i8 zeroext %396, i8 zeroext %397, i8 zeroext %398, i32 %399, i8** %403, i32 %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %410, label %407

407:                                              ; preds = %392
  %408 = load i8*, i8** %8, align 8
  %409 = call i32 @remove(i8* %408)
  store i32 -1, i32* %3, align 4
  br label %441

410:                                              ; preds = %392
  br label %438

411:                                              ; preds = %374
  %412 = load i32, i32* %12, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %428

414:                                              ; preds = %411
  %415 = load i8*, i8** %7, align 8
  %416 = load i8*, i8** %8, align 8
  %417 = load i8**, i8*** %5, align 8
  %418 = load i32, i32* %6, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8*, i8** %417, i64 %419
  %421 = load i32, i32* %9, align 4
  %422 = call i32 @CreateHeaderFile(i8* %415, i8* %416, i8** %420, i32 %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %414
  %425 = load i8*, i8** %8, align 8
  %426 = call i32 @remove(i8* %425)
  store i32 -1, i32* %3, align 4
  br label %441

427:                                              ; preds = %414
  br label %437

428:                                              ; preds = %411
  %429 = load i8*, i8** %7, align 8
  %430 = load i8*, i8** %8, align 8
  %431 = call i32 @ExportElfSection(i8* %429, i8* %430, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0))
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %428
  %434 = load i8*, i8** %8, align 8
  %435 = call i32 @remove(i8* %434)
  store i32 -1, i32* %3, align 4
  br label %441

436:                                              ; preds = %428
  br label %437

437:                                              ; preds = %436, %427
  br label %438

438:                                              ; preds = %437, %410
  %439 = load i8*, i8** %8, align 8
  %440 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.64, i64 0, i64 0), i8* %439)
  store i32 0, i32* %3, align 4
  br label %441

441:                                              ; preds = %438, %433, %424, %407, %371, %361, %341, %333, %292, %282
  %442 = load i32, i32* %3, align 4
  ret i32 %442
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @CreateBinFile(i8*, i8*, i32, i8 zeroext, i8 zeroext, i8 zeroext, i32, i8**, i32) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @CreateHeaderFile(i8*, i8*, i8**, i32) #1

declare dso_local i32 @ExportElfSection(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
