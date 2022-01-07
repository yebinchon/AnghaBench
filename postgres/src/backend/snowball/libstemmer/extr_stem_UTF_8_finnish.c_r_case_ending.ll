; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_finnish.c_r_case_ending.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_finnish.c_r_case_ending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i64, i64*, i32, i64, i64, i8*, i32, i32* }

@a_6 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
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
  %11 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %313

22:                                               ; preds = %1
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = load i32, i32* @a_6, align 4
  %41 = call i32 @find_among_b(%struct.SN_env* %39, i32 %40, i32 30)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %22
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %313

48:                                               ; preds = %22
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %4, align 4
  switch i32 %57, label %301 [
    i32 1, label %58
    i32 2, label %85
    i32 3, label %112
    i32 4, label %139
    i32 5, label %166
    i32 6, label %173
    i32 7, label %180
    i32 8, label %288
  ]

58:                                               ; preds = %48
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp sle i64 %61, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %58
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 5
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 1
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 97
  br i1 %78, label %79, label %80

79:                                               ; preds = %67, %58
  store i32 0, i32* %2, align 4
  br label %313

80:                                               ; preds = %67
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, -1
  store i64 %84, i64* %82, align 8
  br label %301

85:                                               ; preds = %48
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp sle i64 %88, %92
  br i1 %93, label %106, label %94

94:                                               ; preds = %85
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 5
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 1
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 101
  br i1 %105, label %106, label %107

106:                                              ; preds = %94, %85
  store i32 0, i32* %2, align 4
  br label %313

107:                                              ; preds = %94
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %109, align 8
  br label %301

112:                                              ; preds = %48
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = icmp sle i64 %115, %119
  br i1 %120, label %133, label %121

121:                                              ; preds = %112
  %122 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %123 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %122, i32 0, i32 5
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, 1
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 105
  br i1 %132, label %133, label %134

133:                                              ; preds = %121, %112
  store i32 0, i32* %2, align 4
  br label %313

134:                                              ; preds = %121
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %136, align 8
  br label %301

139:                                              ; preds = %48
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = icmp sle i64 %142, %146
  br i1 %147, label %160, label %148

148:                                              ; preds = %139
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %153 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %154, 1
  %156 = getelementptr inbounds i8, i8* %151, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 111
  br i1 %159, label %160, label %161

160:                                              ; preds = %148, %139
  store i32 0, i32* %2, align 4
  br label %313

161:                                              ; preds = %148
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, -1
  store i64 %165, i64* %163, align 8
  br label %301

166:                                              ; preds = %48
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = load i32, i32* @s_2, align 4
  %169 = call i32 @eq_s_b(%struct.SN_env* %167, i32 2, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %313

172:                                              ; preds = %166
  br label %301

173:                                              ; preds = %48
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = load i32, i32* @s_3, align 4
  %176 = call i32 @eq_s_b(%struct.SN_env* %174, i32 2, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  br label %313

179:                                              ; preds = %173
  br label %301

180:                                              ; preds = %48
  %181 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %182 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %184, %187
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %194, %197
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = call i32 @r_LONG(%struct.SN_env* %211)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %180
  br label %222

216:                                              ; preds = %180
  %217 = load i32, i32* %9, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %2, align 4
  br label %313

221:                                              ; preds = %216
  br label %245

222:                                              ; preds = %215
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sub nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %232 = load i32, i32* @s_4, align 4
  %233 = call i32 @eq_s_b(%struct.SN_env* %231, i32 2, i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %244, label %235

235:                                              ; preds = %222
  %236 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %237 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sub nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %243 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  br label %287

244:                                              ; preds = %222
  br label %245

245:                                              ; preds = %244, %221
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sub nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %253 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  %254 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %255 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %254, i32 0, i32 5
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = trunc i64 %259 to i32
  %261 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %262 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = call i32 @skip_utf8(i8* %256, i32 %260, i64 %264, i32 0, i32 -1)
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* %10, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %245
  %269 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %270 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sub nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %276 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %275, i32 0, i32 0
  store i64 %274, i64* %276, align 8
  br label %287

277:                                              ; preds = %245
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %281 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %280, i32 0, i32 0
  store i64 %279, i64* %281, align 8
  %282 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %283 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %286 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %285, i32 0, i32 4
  store i64 %284, i64* %286, align 8
  br label %287

287:                                              ; preds = %277, %268, %235
  br label %301

288:                                              ; preds = %48
  %289 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %290 = load i32, i32* @g_V1, align 4
  %291 = call i32 @in_grouping_b_U(%struct.SN_env* %289, i32 %290, i32 97, i32 246, i32 0)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  store i32 0, i32* %2, align 4
  br label %313

294:                                              ; preds = %288
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = load i32, i32* @g_C, align 4
  %297 = call i32 @in_grouping_b_U(%struct.SN_env* %295, i32 %296, i32 98, i32 122, i32 0)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %294
  store i32 0, i32* %2, align 4
  br label %313

300:                                              ; preds = %294
  br label %301

301:                                              ; preds = %48, %300, %287, %179, %172, %161, %134, %107, %80
  %302 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %303 = call i32 @slice_del(%struct.SN_env* %302)
  store i32 %303, i32* %11, align 4
  %304 = load i32, i32* %11, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load i32, i32* %11, align 4
  store i32 %307, i32* %2, align 4
  br label %313

308:                                              ; preds = %301
  %309 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %310 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %309, i32 0, i32 7
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  store i32 1, i32* %312, align 4
  store i32 1, i32* %2, align 4
  br label %313

313:                                              ; preds = %308, %306, %299, %293, %219, %178, %171, %160, %133, %106, %79, %44, %21
  %314 = load i32, i32* %2, align 4
  ret i32 %314
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_LONG(%struct.SN_env*) #1

declare dso_local i32 @skip_utf8(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @in_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
