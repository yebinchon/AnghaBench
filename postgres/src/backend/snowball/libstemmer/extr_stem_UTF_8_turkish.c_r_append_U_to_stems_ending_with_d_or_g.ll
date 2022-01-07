; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_append_U_to_stems_ending_with_d_or_g.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_append_U_to_stems_ending_with_d_or_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i8* }

@g_vowel = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@s_14 = common dso_local global i32 0, align 4
@s_15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_append_U_to_stems_ending_with_d_or_g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_append_U_to_stems_ending_with_d_or_g(%struct.SN_env* %0) #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %4, align 4
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %1
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 100
  br i1 %57, label %58, label %59

58:                                               ; preds = %45, %1
  br label %64

59:                                               ; preds = %45
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  br label %98

64:                                               ; preds = %58
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp sle i32 %74, %77
  br i1 %78, label %92, label %79

79:                                               ; preds = %64
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %82, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 103
  br i1 %91, label %92, label %93

92:                                               ; preds = %79, %64
  store i32 0, i32* %2, align 4
  br label %515

93:                                               ; preds = %79
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %93, %59
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %108, %111
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  store i32 %120, i32* %7, align 4
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = load i32, i32* @g_vowel, align 4
  %123 = call i64 @out_grouping_b_U(%struct.SN_env* %121, i32 %122, i32 97, i32 305, i32 1)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %98
  br label %203

126:                                              ; preds = %98
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %129, %132
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp sle i32 %137, %140
  br i1 %141, label %155, label %142

142:                                              ; preds = %126
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %147 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %145, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 97
  br i1 %154, label %155, label %156

155:                                              ; preds = %142, %126
  br label %161

156:                                              ; preds = %142
  %157 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %158 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 4
  br label %175

161:                                              ; preds = %155
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = load i32, i32* @s_9, align 4
  %171 = call i32 @eq_s_b(%struct.SN_env* %169, i32 2, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %161
  br label %203

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %156
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sub nsw i32 %178, %179
  %181 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %182 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %184 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %10, align 4
  %186 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @s_10, align 4
  %194 = call i32 @insert_s(%struct.SN_env* %186, i32 %189, i32 %192, i32 2, i32 %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %175
  %201 = load i32, i32* %9, align 4
  store i32 %201, i32* %2, align 4
  br label %515

202:                                              ; preds = %175
  br label %514

203:                                              ; preds = %173, %125
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sub nsw i32 %206, %207
  %209 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %210 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %213, %216
  store i32 %217, i32* %11, align 4
  %218 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %219 = load i32, i32* @g_vowel, align 4
  %220 = call i64 @out_grouping_b_U(%struct.SN_env* %218, i32 %219, i32 97, i32 305, i32 1)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %203
  br label %320

223:                                              ; preds = %203
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %228 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %226, %229
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %12, align 4
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %236 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = icmp sle i32 %234, %237
  br i1 %238, label %252, label %239

239:                                              ; preds = %223
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %244 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %242, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp ne i32 %250, 101
  br i1 %251, label %252, label %253

252:                                              ; preds = %239, %223
  br label %258

253:                                              ; preds = %239
  %254 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %255 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %255, align 4
  br label %292

258:                                              ; preds = %252
  %259 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %260 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %12, align 4
  %263 = sub nsw i32 %261, %262
  %264 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %265 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %270 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = icmp sle i32 %268, %271
  br i1 %272, label %286, label %273

273:                                              ; preds = %258
  %274 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %275 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %274, i32 0, i32 3
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %278 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %276, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp ne i32 %284, 105
  br i1 %285, label %286, label %287

286:                                              ; preds = %273, %258
  br label %320

287:                                              ; preds = %273
  %288 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %289 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, -1
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %287, %253
  %293 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %294 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %11, align 4
  %297 = sub nsw i32 %295, %296
  %298 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %299 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  %300 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %301 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %14, align 4
  %303 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %304 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %305 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %308 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @s_11, align 4
  %311 = call i32 @insert_s(%struct.SN_env* %303, i32 %306, i32 %309, i32 1, i32 %310)
  store i32 %311, i32* %13, align 4
  %312 = load i32, i32* %14, align 4
  %313 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %314 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %313, i32 0, i32 1
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* %13, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %292
  %318 = load i32, i32* %13, align 4
  store i32 %318, i32* %2, align 4
  br label %515

319:                                              ; preds = %292
  br label %514

320:                                              ; preds = %286, %222
  %321 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %322 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* %6, align 4
  %325 = sub nsw i32 %323, %324
  %326 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %327 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %326, i32 0, i32 1
  store i32 %325, i32* %327, align 4
  %328 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %329 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %332 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %330, %333
  store i32 %334, i32* %15, align 4
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = load i32, i32* @g_vowel, align 4
  %337 = call i64 @out_grouping_b_U(%struct.SN_env* %335, i32 %336, i32 97, i32 305, i32 1)
  %338 = icmp slt i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %320
  br label %437

340:                                              ; preds = %320
  %341 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %342 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %345 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %343, %346
  store i32 %347, i32* %16, align 4
  %348 = load i32, i32* %16, align 4
  %349 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %350 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %353 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = icmp sle i32 %351, %354
  br i1 %355, label %369, label %356

356:                                              ; preds = %340
  %357 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %358 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %357, i32 0, i32 3
  %359 = load i8*, i8** %358, align 8
  %360 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %361 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = sub nsw i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %359, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp ne i32 %367, 111
  br i1 %368, label %369, label %370

369:                                              ; preds = %356, %340
  br label %375

370:                                              ; preds = %356
  %371 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %372 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, -1
  store i32 %374, i32* %372, align 4
  br label %409

375:                                              ; preds = %369
  %376 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %377 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* %16, align 4
  %380 = sub nsw i32 %378, %379
  %381 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %382 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %381, i32 0, i32 1
  store i32 %380, i32* %382, align 4
  %383 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %384 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %387 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = icmp sle i32 %385, %388
  br i1 %389, label %403, label %390

390:                                              ; preds = %375
  %391 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %392 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %391, i32 0, i32 3
  %393 = load i8*, i8** %392, align 8
  %394 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %395 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = sub nsw i32 %396, 1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %393, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = sext i8 %400 to i32
  %402 = icmp ne i32 %401, 117
  br i1 %402, label %403, label %404

403:                                              ; preds = %390, %375
  br label %437

404:                                              ; preds = %390
  %405 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %406 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = add nsw i32 %407, -1
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %404, %370
  %410 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %411 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* %15, align 4
  %414 = sub nsw i32 %412, %413
  %415 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %416 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %415, i32 0, i32 1
  store i32 %414, i32* %416, align 4
  %417 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %418 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  store i32 %419, i32* %18, align 4
  %420 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %421 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %422 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %425 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @s_12, align 4
  %428 = call i32 @insert_s(%struct.SN_env* %420, i32 %423, i32 %426, i32 1, i32 %427)
  store i32 %428, i32* %17, align 4
  %429 = load i32, i32* %18, align 4
  %430 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %431 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %430, i32 0, i32 1
  store i32 %429, i32* %431, align 4
  %432 = load i32, i32* %17, align 4
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %409
  %435 = load i32, i32* %17, align 4
  store i32 %435, i32* %2, align 4
  br label %515

436:                                              ; preds = %409
  br label %514

437:                                              ; preds = %403, %339
  %438 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %439 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* %6, align 4
  %442 = sub nsw i32 %440, %441
  %443 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %444 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %443, i32 0, i32 1
  store i32 %442, i32* %444, align 4
  %445 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %446 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %449 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = sub nsw i32 %447, %450
  store i32 %451, i32* %19, align 4
  %452 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %453 = load i32, i32* @g_vowel, align 4
  %454 = call i64 @out_grouping_b_U(%struct.SN_env* %452, i32 %453, i32 97, i32 305, i32 1)
  %455 = icmp slt i64 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %437
  store i32 0, i32* %2, align 4
  br label %515

457:                                              ; preds = %437
  %458 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %459 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %462 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = sub nsw i32 %460, %463
  store i32 %464, i32* %20, align 4
  %465 = load i32, i32* %20, align 4
  %466 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %467 = load i32, i32* @s_13, align 4
  %468 = call i32 @eq_s_b(%struct.SN_env* %466, i32 2, i32 %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %471, label %470

470:                                              ; preds = %457
  br label %472

471:                                              ; preds = %457
  br label %486

472:                                              ; preds = %470
  %473 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %474 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* %20, align 4
  %477 = sub nsw i32 %475, %476
  %478 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %479 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %478, i32 0, i32 1
  store i32 %477, i32* %479, align 4
  %480 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %481 = load i32, i32* @s_14, align 4
  %482 = call i32 @eq_s_b(%struct.SN_env* %480, i32 2, i32 %481)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %472
  store i32 0, i32* %2, align 4
  br label %515

485:                                              ; preds = %472
  br label %486

486:                                              ; preds = %485, %471
  %487 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %488 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* %19, align 4
  %491 = sub nsw i32 %489, %490
  %492 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %493 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %492, i32 0, i32 1
  store i32 %491, i32* %493, align 4
  %494 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %495 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  store i32 %496, i32* %22, align 4
  %497 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %498 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %499 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %502 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* @s_15, align 4
  %505 = call i32 @insert_s(%struct.SN_env* %497, i32 %500, i32 %503, i32 2, i32 %504)
  store i32 %505, i32* %21, align 4
  %506 = load i32, i32* %22, align 4
  %507 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %508 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %507, i32 0, i32 1
  store i32 %506, i32* %508, align 4
  %509 = load i32, i32* %21, align 4
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %511, label %513

511:                                              ; preds = %486
  %512 = load i32, i32* %21, align 4
  store i32 %512, i32* %2, align 4
  br label %515

513:                                              ; preds = %486
  br label %514

514:                                              ; preds = %513, %436, %319, %202
  store i32 1, i32* %2, align 4
  br label %515

515:                                              ; preds = %514, %511, %484, %456, %434, %317, %200, %92
  %516 = load i32, i32* %2, align 4
  ret i32 %516
}

declare dso_local i64 @out_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @insert_s(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
