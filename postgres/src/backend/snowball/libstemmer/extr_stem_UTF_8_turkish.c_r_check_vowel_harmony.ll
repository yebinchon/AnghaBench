; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_check_vowel_harmony.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_check_vowel_harmony.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i8* }

@g_vowel = common dso_local global i32 0, align 4
@g_vowel1 = common dso_local global i32 0, align 4
@g_vowel2 = common dso_local global i32 0, align 4
@s_0 = common dso_local global i32 0, align 4
@g_vowel3 = common dso_local global i32 0, align 4
@g_vowel4 = common dso_local global i32 0, align 4
@g_vowel5 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@g_vowel6 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_check_vowel_harmony to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_check_vowel_harmony(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %6 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %7 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %10 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %14 = load i32, i32* @g_vowel, align 4
  %15 = call i64 @out_grouping_b_U(%struct.SN_env* %13, i32 %14, i32 97, i32 305, i32 1)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %287

18:                                               ; preds = %1
  %19 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %20 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %47, label %34

34:                                               ; preds = %18
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 97
  br i1 %46, label %47, label %48

47:                                               ; preds = %34, %18
  br label %59

48:                                               ; preds = %34
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = load i32, i32* @g_vowel1, align 4
  %55 = call i64 @out_grouping_b_U(%struct.SN_env* %53, i32 %54, i32 97, i32 305, i32 1)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %59

58:                                               ; preds = %48
  br label %279

59:                                               ; preds = %57, %47
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp sle i32 %69, %72
  br i1 %73, label %87, label %74

74:                                               ; preds = %59
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %77, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 101
  br i1 %86, label %87, label %88

87:                                               ; preds = %74, %59
  br label %99

88:                                               ; preds = %74
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = load i32, i32* @g_vowel2, align 4
  %95 = call i64 @out_grouping_b_U(%struct.SN_env* %93, i32 %94, i32 101, i32 252, i32 1)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %99

98:                                               ; preds = %88
  br label %279

99:                                               ; preds = %97, %87
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = load i32, i32* @s_0, align 4
  %109 = call i32 @eq_s_b(%struct.SN_env* %107, i32 2, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %99
  br label %119

112:                                              ; preds = %99
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = load i32, i32* @g_vowel3, align 4
  %115 = call i64 @out_grouping_b_U(%struct.SN_env* %113, i32 %114, i32 97, i32 305, i32 1)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %119

118:                                              ; preds = %112
  br label %279

119:                                              ; preds = %117, %111
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp sle i32 %129, %132
  br i1 %133, label %147, label %134

134:                                              ; preds = %119
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %137, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 105
  br i1 %146, label %147, label %148

147:                                              ; preds = %134, %119
  br label %159

148:                                              ; preds = %134
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = load i32, i32* @g_vowel4, align 4
  %155 = call i64 @out_grouping_b_U(%struct.SN_env* %153, i32 %154, i32 101, i32 105, i32 1)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  br label %159

158:                                              ; preds = %148
  br label %279

159:                                              ; preds = %157, %147
  %160 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp sle i32 %169, %172
  br i1 %173, label %187, label %174

174:                                              ; preds = %159
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %177, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 111
  br i1 %186, label %187, label %188

187:                                              ; preds = %174, %159
  br label %199

188:                                              ; preds = %174
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %190, align 4
  %193 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %194 = load i32, i32* @g_vowel5, align 4
  %195 = call i64 @out_grouping_b_U(%struct.SN_env* %193, i32 %194, i32 111, i32 117, i32 1)
  %196 = icmp slt i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %188
  br label %199

198:                                              ; preds = %188
  br label %279

199:                                              ; preds = %197, %187
  %200 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %201 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = load i32, i32* @s_1, align 4
  %209 = call i32 @eq_s_b(%struct.SN_env* %207, i32 2, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %199
  br label %219

212:                                              ; preds = %199
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = load i32, i32* @g_vowel6, align 4
  %215 = call i64 @out_grouping_b_U(%struct.SN_env* %213, i32 %214, i32 246, i32 252, i32 1)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  br label %219

218:                                              ; preds = %212
  br label %279

219:                                              ; preds = %217, %211
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sub nsw i32 %222, %223
  %225 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %226 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %228 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %231 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp sle i32 %229, %232
  br i1 %233, label %247, label %234

234:                                              ; preds = %219
  %235 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %236 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = sub nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %237, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp ne i32 %245, 117
  br i1 %246, label %247, label %248

247:                                              ; preds = %234, %219
  br label %259

248:                                              ; preds = %234
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %250, align 4
  %253 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %254 = load i32, i32* @g_vowel5, align 4
  %255 = call i64 @out_grouping_b_U(%struct.SN_env* %253, i32 %254, i32 111, i32 117, i32 1)
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %248
  br label %259

258:                                              ; preds = %248
  br label %279

259:                                              ; preds = %257, %247
  %260 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %261 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sub nsw i32 %262, %263
  %265 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %266 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  %267 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %268 = load i32, i32* @s_2, align 4
  %269 = call i32 @eq_s_b(%struct.SN_env* %267, i32 2, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %259
  store i32 0, i32* %2, align 4
  br label %287

272:                                              ; preds = %259
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = load i32, i32* @g_vowel6, align 4
  %275 = call i64 @out_grouping_b_U(%struct.SN_env* %273, i32 %274, i32 246, i32 252, i32 1)
  %276 = icmp slt i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store i32 0, i32* %2, align 4
  br label %287

278:                                              ; preds = %272
  br label %279

279:                                              ; preds = %278, %258, %218, %198, %158, %118, %98, %58
  %280 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %281 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = sub nsw i32 %282, %283
  %285 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %286 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 4
  store i32 1, i32* %2, align 4
  br label %287

287:                                              ; preds = %279, %277, %271, %17
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i64 @out_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
