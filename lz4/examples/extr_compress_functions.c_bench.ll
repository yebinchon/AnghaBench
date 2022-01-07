; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_compress_functions.c_bench.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_compress_functions.c_bench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@.str = private unnamed_addr constant [57 x i8] c"Starting benchmark for function: LZ4_compress_default()\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Couldn't run LZ4_compress_default()... error code received is in exit code.\00", align 1
@.str.2 = private unnamed_addr constant [94 x i8] c"According to memcmp(), the compressed dst we got doesn't match the known_good_dst... ruh roh.\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Starting benchmark for function: LZ4_compress_fast()\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"Couldn't run LZ4_compress_fast()... error code received is in exit code.\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"Starting benchmark for function: LZ4_compress_fast_extState()\0A\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"Couldn't run LZ4_compress_fast_extState()... error code received is in exit code.\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Starting benchmark for function: LZ4_decompress_safe()\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"Couldn't run LZ4_decompress_safe()... error code received is in exit code.\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Starting benchmark for function: LZ4_decompress_fast()\0A\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"Couldn't run LZ4_decompress_fast()... error code received is in exit code.\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"The test specified isn't valid.  Please check your code.\00", align 1
@BILLION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bench(i8* %0, i32 %1, i32 %2, i8* %3, i8* %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.timespec, align 8
  %21 = alloca %struct.timespec, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 5000, i32* %19, align 4
  store i32 1, i32* %22, align 4
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %258 [
    i32 132, label %35
    i32 131, label %80
    i32 130, label %125
    i32 128, label %170
    i32 129, label %215
  ]

35:                                               ; preds = %8
  %36 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %24, align 4
  br label %37

37:                                               ; preds = %46, %35
  %38 = load i32, i32* %24, align 4
  %39 = icmp slt i32 %38, 5000
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @LZ4_compress_default(i8* %41, i8* %42, i64 %43, i64 %44)
  store i32 %45, i32* %18, align 4
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %24, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %24, align 4
  br label %37

49:                                               ; preds = %37
  %50 = load i32, i32* %18, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @run_screaming(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @memcmp(i8* %56, i8* %57, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 @run_screaming(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %65 = call i32 @clock_gettime(i32 %64, %struct.timespec* %20)
  store i32 1, i32* %25, align 4
  br label %66

66:                                               ; preds = %76, %63
  %67 = load i32, i32* %25, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @LZ4_compress_default(i8* %71, i8* %72, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %25, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %25, align 4
  br label %66

79:                                               ; preds = %66
  br label %260

80:                                               ; preds = %8
  %81 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %26, align 4
  br label %82

82:                                               ; preds = %91, %80
  %83 = load i32, i32* %26, align 4
  %84 = icmp slt i32 %83, 5000
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call i32 @LZ4_compress_fast(i8* %86, i8* %87, i64 %88, i64 %89, i32 1)
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %26, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %26, align 4
  br label %82

94:                                               ; preds = %82
  %95 = load i32, i32* %18, align 4
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @run_screaming(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i8*, i8** %9, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i64, i64* %15, align 8
  %104 = call i32 @memcmp(i8* %101, i8* %102, i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 @run_screaming(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %108

108:                                              ; preds = %106, %100
  %109 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %110 = call i32 @clock_gettime(i32 %109, %struct.timespec* %20)
  store i32 1, i32* %27, align 4
  br label %111

111:                                              ; preds = %121, %108
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %15, align 8
  %120 = call i32 @LZ4_compress_fast(i8* %116, i8* %117, i64 %118, i64 %119, i32 1)
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %27, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %27, align 4
  br label %111

124:                                              ; preds = %111
  br label %260

125:                                              ; preds = %8
  %126 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %28, align 4
  br label %127

127:                                              ; preds = %136, %125
  %128 = load i32, i32* %28, align 4
  %129 = icmp slt i32 %128, 5000
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i8*, i8** %12, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %15, align 8
  %135 = call i32 @LZ4_compress_fast_extState(i32* %23, i8* %131, i8* %132, i64 %133, i64 %134, i32 1)
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %28, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %28, align 4
  br label %127

139:                                              ; preds = %127
  %140 = load i32, i32* %18, align 4
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @run_screaming(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i8*, i8** %9, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = load i64, i64* %15, align 8
  %149 = call i32 @memcmp(i8* %146, i8* %147, i64 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = call i32 @run_screaming(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %153

153:                                              ; preds = %151, %145
  %154 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %155 = call i32 @clock_gettime(i32 %154, %struct.timespec* %20)
  store i32 1, i32* %29, align 4
  br label %156

156:                                              ; preds = %166, %153
  %157 = load i32, i32* %29, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp sle i32 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i8*, i8** %12, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* %15, align 8
  %165 = call i32 @LZ4_compress_fast_extState(i32* %23, i8* %161, i8* %162, i64 %163, i64 %164, i32 1)
  br label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %29, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %29, align 4
  br label %156

169:                                              ; preds = %156
  br label %260

170:                                              ; preds = %8
  %171 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %30, align 4
  br label %172

172:                                              ; preds = %181, %170
  %173 = load i32, i32* %30, align 4
  %174 = icmp slt i32 %173, 5000
  br i1 %174, label %175, label %184

175:                                              ; preds = %172
  %176 = load i8*, i8** %12, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = load i64, i64* %16, align 8
  %179 = load i64, i64* %14, align 8
  %180 = call i32 @LZ4_decompress_safe(i8* %176, i8* %177, i64 %178, i64 %179)
  store i32 %180, i32* %18, align 4
  br label %181

181:                                              ; preds = %175
  %182 = load i32, i32* %30, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %30, align 4
  br label %172

184:                                              ; preds = %172
  %185 = load i32, i32* %18, align 4
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @run_screaming(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %187, %184
  %191 = load i8*, i8** %9, align 8
  %192 = load i8*, i8** %13, align 8
  %193 = load i64, i64* %14, align 8
  %194 = call i32 @memcmp(i8* %191, i8* %192, i64 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = call i32 @run_screaming(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %198

198:                                              ; preds = %196, %190
  %199 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %200 = call i32 @clock_gettime(i32 %199, %struct.timespec* %20)
  store i32 1, i32* %31, align 4
  br label %201

201:                                              ; preds = %211, %198
  %202 = load i32, i32* %31, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %201
  %206 = load i8*, i8** %12, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = load i64, i64* %16, align 8
  %209 = load i64, i64* %14, align 8
  %210 = call i32 @LZ4_decompress_safe(i8* %206, i8* %207, i64 %208, i64 %209)
  br label %211

211:                                              ; preds = %205
  %212 = load i32, i32* %31, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %31, align 4
  br label %201

214:                                              ; preds = %201
  br label %260

215:                                              ; preds = %8
  %216 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %32, align 4
  br label %217

217:                                              ; preds = %225, %215
  %218 = load i32, i32* %32, align 4
  %219 = icmp slt i32 %218, 5000
  br i1 %219, label %220, label %228

220:                                              ; preds = %217
  %221 = load i8*, i8** %12, align 8
  %222 = load i8*, i8** %13, align 8
  %223 = load i64, i64* %14, align 8
  %224 = call i32 @LZ4_decompress_fast(i8* %221, i8* %222, i64 %223)
  store i32 %224, i32* %18, align 4
  br label %225

225:                                              ; preds = %220
  %226 = load i32, i32* %32, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %32, align 4
  br label %217

228:                                              ; preds = %217
  %229 = load i32, i32* %18, align 4
  %230 = icmp slt i32 %229, 1
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* %18, align 4
  %233 = call i32 @run_screaming(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i8*, i8** %9, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = load i64, i64* %14, align 8
  %238 = call i32 @memcmp(i8* %235, i8* %236, i64 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = call i32 @run_screaming(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %242

242:                                              ; preds = %240, %234
  %243 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %244 = call i32 @clock_gettime(i32 %243, %struct.timespec* %20)
  store i32 1, i32* %33, align 4
  br label %245

245:                                              ; preds = %254, %242
  %246 = load i32, i32* %33, align 4
  %247 = load i32, i32* %11, align 4
  %248 = icmp sle i32 %246, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %245
  %250 = load i8*, i8** %12, align 8
  %251 = load i8*, i8** %13, align 8
  %252 = load i64, i64* %14, align 8
  %253 = call i32 @LZ4_decompress_fast(i8* %250, i8* %251, i64 %252)
  br label %254

254:                                              ; preds = %249
  %255 = load i32, i32* %33, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %33, align 4
  br label %245

257:                                              ; preds = %245
  br label %260

258:                                              ; preds = %8
  %259 = call i32 @run_screaming(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i32 1)
  br label %260

260:                                              ; preds = %258, %257, %214, %169, %124, %79
  %261 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %262 = call i32 @clock_gettime(i32 %261, %struct.timespec* %21)
  %263 = load i32, i32* @BILLION, align 4
  %264 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sub nsw i32 %265, %267
  %269 = mul nsw i32 %263, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %270, %272
  %274 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = sub nsw i64 %273, %275
  store i64 %276, i64* %17, align 8
  %277 = load i64, i64* %17, align 8
  ret i64 %277
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @LZ4_compress_default(i8*, i8*, i64, i64) #1

declare dso_local i32 @run_screaming(i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @LZ4_compress_fast(i8*, i8*, i64, i64, i32) #1

declare dso_local i32 @LZ4_compress_fast_extState(i32*, i8*, i8*, i64, i64, i32) #1

declare dso_local i32 @LZ4_decompress_safe(i8*, i8*, i64, i64) #1

declare dso_local i32 @LZ4_decompress_fast(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
