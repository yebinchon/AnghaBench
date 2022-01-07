; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-vdsl-fw/src/extr_w921v_fw_cutter.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-vdsl-fw/src/extr_w921v_fw_cutter.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Arcadyan Firmware cutter v0.1\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"-----------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"This tool extracts the different parts of an arcadyan firmware update file\0A\00", align 1
@.str.3 = private unnamed_addr constant [111 x i8] c"This tool is for private use only. The Firmware that gets extracted has a license that forbids redistribution\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Please only run this if you understand the risks\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"I understand the risks ? (y/N)\0A\00", align 1
@FW_NAME = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"Failed to find %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [96 x i8] c"Ask Google or try https://www.telekom.de/hilfe/downloads/firmware-speedport-w921v-1.45.000.bin\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Failed to alloc %d bytes\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Unable to open %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Loaded %d instead of %d bytes inside %s\0A\00", align 1
@MAGIC_SZ = common dso_local global i32 0, align 4
@MAGIC = common dso_local global i8 0, align 1
@MAGIC_PART = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"Found partition at 0x%08X with size %d\0A\00", align 1
@MAGIC_LZMA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"Failed to alloc dest buffer\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Failed to decompress data\0A\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"\09Failed to write %d bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"\09Wrote %d bytes to %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\09Failed to open %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"\09This is not lzma\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %26 = call signext i8 (...) @getchar()
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 121
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %258

30:                                               ; preds = %2
  %31 = load i8*, i8** @FW_NAME, align 8
  %32 = call i64 @stat(i8* %31, %struct.stat* %6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** @FW_NAME, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %258

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @malloc(i32 %40)
  store i8* %41, i8** %7, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @malloc(i32 %43)
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %8, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48, %38
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %53)
  store i32 -1, i32* %3, align 4
  br label %258

55:                                               ; preds = %48
  %56 = load i8*, i8** @FW_NAME, align 8
  %57 = load i32, i32* @O_RDONLY, align 4
  %58 = call i32 @open(i8* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** @FW_NAME, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %62)
  store i32 -1, i32* %3, align 4
  br label %258

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @read(i32 %65, i8* %66, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %64
  %77 = load i32, i32* %9, align 4
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** @FW_NAME, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %77, i32 %79, i8* %80)
  store i32 -1, i32* %3, align 4
  br label %258

82:                                               ; preds = %64
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %127, %82
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @MAGIC_SZ, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %87
  %92 = load i32, i32* %11, align 4
  %93 = srem i32 %92, 16
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 16
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @MAGIC, align 1
  %104 = zext i8 %103 to i32
  %105 = xor i32 %102, %104
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8 %106, i8* %110, align 1
  br label %126

111:                                              ; preds = %91
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8, i8* @MAGIC, align 1
  %119 = zext i8 %118 to i32
  %120 = xor i32 %117, %119
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  store i8 %121, i8* %125, align 1
  br label %126

126:                                              ; preds = %111, %95
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %87

130:                                              ; preds = %87
  %131 = load i32, i32* %9, align 4
  %132 = sub nsw i32 %131, 3
  store i32 %132, i32* %9, align 4
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* @MAGIC_SZ, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* @MAGIC_SZ, align 4
  %139 = add nsw i32 %138, 3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @MAGIC_SZ, align 4
  %144 = sub nsw i32 %142, %143
  %145 = call i32 @memmove(i8* %136, i8* %141, i32 %144)
  %146 = load i32*, i32** %8, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memcpy(i32* %146, i8* %147, i32 %149)
  br label %151

151:                                              ; preds = %250, %130
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @MAGIC_PART, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %246

159:                                              ; preds = %151
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 2
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = sub nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 4
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i64 %164, i64 %169)
  %171 = load i32*, i32** %8, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MAGIC_LZMA, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %242

178:                                              ; preds = %159
  store i32 1048576, i32* %15, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sub nsw i32 %180, 3
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %16, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sub nsw i32 %186, 6
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = call i8* @part_type(i32 %191)
  store i8* %192, i8** %18, align 8
  %193 = load i32, i32* %15, align 4
  %194 = call i8* @malloc(i32 %193)
  store i8* %194, i8** %19, align 8
  %195 = load i8*, i8** %19, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %178
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %258

199:                                              ; preds = %178
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = bitcast i32* %203 to i8*
  %205 = load i32, i32* %16, align 4
  %206 = load i8*, i8** %19, align 8
  %207 = call i64 @lzma_inflate(i8* %204, i32 %205, i8* %206, i32* %15)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %199
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %258

211:                                              ; preds = %199
  %212 = load i8*, i8** %18, align 8
  %213 = load i32, i32* @S_IRUSR, align 4
  %214 = load i32, i32* @S_IWUSR, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @creat(i8* %212, i32 %215)
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, -1
  br i1 %218, label %219, label %236

219:                                              ; preds = %211
  %220 = load i32, i32* %10, align 4
  %221 = load i8*, i8** %19, align 8
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @write(i32 %220, i8* %221, i32 %222)
  %224 = load i32, i32* %15, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %219
  %227 = load i32, i32* %15, align 4
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %227)
  br label %233

229:                                              ; preds = %219
  %230 = load i32, i32* %15, align 4
  %231 = load i8*, i8** %18, align 8
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %230, i8* %231)
  br label %233

233:                                              ; preds = %229, %226
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @close(i32 %234)
  br label %239

236:                                              ; preds = %211
  %237 = load i8*, i8** %18, align 8
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i8*, i8** %19, align 8
  %241 = call i32 @free(i8* %240)
  br label %244

242:                                              ; preds = %159
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  br label %244

244:                                              ; preds = %242, %239
  %245 = load i32, i32* %14, align 4
  store i32 %245, i32* %13, align 4
  br label %249

246:                                              ; preds = %151
  %247 = load i32, i32* %14, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %14, align 4
  br label %249

249:                                              ; preds = %246, %244
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = udiv i64 %254, 4
  %256 = icmp ult i64 %252, %255
  br i1 %256, label %151, label %257

257:                                              ; preds = %250
  store i32 0, i32* %3, align 4
  br label %258

258:                                              ; preds = %257, %209, %197, %76, %61, %51, %34, %29
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local signext i8 @getchar(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @part_type(i32) #1

declare dso_local i64 @lzma_inflate(i8*, i32, i8*, i32*) #1

declare dso_local i32 @creat(i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
