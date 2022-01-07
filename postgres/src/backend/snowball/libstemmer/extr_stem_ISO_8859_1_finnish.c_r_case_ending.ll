; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_finnish.c_r_case_ending.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_finnish.c_r_case_ending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i64, i64*, i32, i64, i64, i8*, i32, i32* }

@a_6 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@g_V1 = common dso_local global i32 0, align 4
@g_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_case_ending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_case_ending(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %11 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %12 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %15 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %346

21:                                               ; preds = %1
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = load i32, i32* @a_6, align 4
  %40 = call i32 @find_among_b(%struct.SN_env* %38, i32 %39, i32 30)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %21
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %2, align 4
  br label %346

47:                                               ; preds = %21
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  switch i32 %56, label %334 [
    i32 1, label %57
    i32 2, label %84
    i32 3, label %111
    i32 4, label %138
    i32 5, label %165
    i32 6, label %192
    i32 7, label %219
    i32 8, label %321
  ]

57:                                               ; preds = %47
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp sle i64 %60, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %57
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 97
  br i1 %77, label %78, label %79

78:                                               ; preds = %66, %57
  store i32 0, i32* %2, align 4
  br label %346

79:                                               ; preds = %66
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  br label %334

84:                                               ; preds = %47
  %85 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %86 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = icmp sle i64 %87, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %84
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 5
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 101
  br i1 %104, label %105, label %106

105:                                              ; preds = %93, %84
  store i32 0, i32* %2, align 4
  br label %346

106:                                              ; preds = %93
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, -1
  store i64 %110, i64* %108, align 8
  br label %334

111:                                              ; preds = %47
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = icmp sle i64 %114, %118
  br i1 %119, label %132, label %120

120:                                              ; preds = %111
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, 1
  %128 = getelementptr inbounds i8, i8* %123, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 105
  br i1 %131, label %132, label %133

132:                                              ; preds = %120, %111
  store i32 0, i32* %2, align 4
  br label %346

133:                                              ; preds = %120
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %135, align 8
  br label %334

138:                                              ; preds = %47
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = icmp sle i64 %141, %145
  br i1 %146, label %159, label %147

147:                                              ; preds = %138
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 5
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %152 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %153, 1
  %155 = getelementptr inbounds i8, i8* %150, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 111
  br i1 %158, label %159, label %160

159:                                              ; preds = %147, %138
  store i32 0, i32* %2, align 4
  br label %346

160:                                              ; preds = %147
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, -1
  store i64 %164, i64* %162, align 8
  br label %334

165:                                              ; preds = %47
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = icmp sle i64 %168, %172
  br i1 %173, label %186, label %174

174:                                              ; preds = %165
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %175, i32 0, i32 5
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %180, 1
  %182 = getelementptr inbounds i8, i8* %177, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp ne i32 %184, 228
  br i1 %185, label %186, label %187

186:                                              ; preds = %174, %165
  store i32 0, i32* %2, align 4
  br label %346

187:                                              ; preds = %174
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, -1
  store i64 %191, i64* %189, align 8
  br label %334

192:                                              ; preds = %47
  %193 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %194 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = icmp sle i64 %195, %199
  br i1 %200, label %213, label %201

201:                                              ; preds = %192
  %202 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %203 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %202, i32 0, i32 5
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %207, 1
  %209 = getelementptr inbounds i8, i8* %204, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 246
  br i1 %212, label %213, label %214

213:                                              ; preds = %201, %192
  store i32 0, i32* %2, align 4
  br label %346

214:                                              ; preds = %201
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, -1
  store i64 %218, i64* %216, align 8
  br label %334

219:                                              ; preds = %47
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = sub nsw i64 %223, %226
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %231 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = sub nsw i64 %233, %236
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = sub nsw i64 %243, %246
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %251 = call i32 @r_LONG(%struct.SN_env* %250)
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %219
  br label %261

255:                                              ; preds = %219
  %256 = load i32, i32* %9, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = load i32, i32* %9, align 4
  store i32 %259, i32* %2, align 4
  br label %346

260:                                              ; preds = %255
  br label %284

261:                                              ; preds = %254
  %262 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %263 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sub nsw i32 %264, %265
  %267 = sext i32 %266 to i64
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 0
  store i64 %267, i64* %269, align 8
  %270 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %271 = load i32, i32* @s_2, align 4
  %272 = call i32 @eq_s_b(%struct.SN_env* %270, i32 2, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %283, label %274

274:                                              ; preds = %261
  %275 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %276 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sub nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 0
  store i64 %280, i64* %282, align 8
  br label %320

283:                                              ; preds = %261
  br label %284

284:                                              ; preds = %283, %260
  %285 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %286 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sub nsw i32 %287, %288
  %290 = sext i32 %289 to i64
  %291 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %292 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %291, i32 0, i32 0
  store i64 %290, i64* %292, align 8
  %293 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %294 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %297 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = icmp sle i64 %295, %299
  br i1 %300, label %301, label %310

301:                                              ; preds = %284
  %302 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %303 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sub nsw i32 %304, %305
  %307 = sext i32 %306 to i64
  %308 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %309 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %308, i32 0, i32 0
  store i64 %307, i64* %309, align 8
  br label %320

310:                                              ; preds = %284
  %311 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %312 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = add nsw i64 %313, -1
  store i64 %314, i64* %312, align 8
  %315 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %316 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %319 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %318, i32 0, i32 4
  store i64 %317, i64* %319, align 8
  br label %320

320:                                              ; preds = %310, %301, %274
  br label %334

321:                                              ; preds = %47
  %322 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %323 = load i32, i32* @g_V1, align 4
  %324 = call i32 @in_grouping_b(%struct.SN_env* %322, i32 %323, i32 97, i32 246, i32 0)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  store i32 0, i32* %2, align 4
  br label %346

327:                                              ; preds = %321
  %328 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %329 = load i32, i32* @g_C, align 4
  %330 = call i32 @in_grouping_b(%struct.SN_env* %328, i32 %329, i32 98, i32 122, i32 0)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  store i32 0, i32* %2, align 4
  br label %346

333:                                              ; preds = %327
  br label %334

334:                                              ; preds = %47, %333, %320, %214, %187, %160, %133, %106, %79
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = call i32 @slice_del(%struct.SN_env* %335)
  store i32 %336, i32* %10, align 4
  %337 = load i32, i32* %10, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %334
  %340 = load i32, i32* %10, align 4
  store i32 %340, i32* %2, align 4
  br label %346

341:                                              ; preds = %334
  %342 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %343 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %342, i32 0, i32 7
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  store i32 1, i32* %345, align 4
  store i32 1, i32* %2, align 4
  br label %346

346:                                              ; preds = %341, %339, %332, %326, %258, %213, %186, %159, %132, %105, %78, %43, %20
  %347 = load i32, i32* %2, align 4
  ret i32 %347
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_LONG(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @in_grouping_b(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
