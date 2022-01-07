; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_french.c_r_residual_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_french.c_r_residual_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i8*, i32, i32* }

@s_30 = common dso_local global i32 0, align 4
@g_keep_with_s = common dso_local global i32 0, align 4
@a_7 = common dso_local global i32 0, align 4
@s_31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_residual_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_residual_suffix(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %48, label %35

35:                                               ; preds = %1
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 115
  br i1 %47, label %48, label %56

48:                                               ; preds = %35, %1
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %123

56:                                               ; preds = %35
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %6, align 4
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = load i32, i32* @s_30, align 4
  %83 = call i32 @eq_s_b(%struct.SN_env* %81, i32 2, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %56
  br label %87

86:                                               ; preds = %56
  br label %108

87:                                               ; preds = %85
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = load i32, i32* @g_keep_with_s, align 4
  %97 = call i64 @out_grouping_b(%struct.SN_env* %95, i32 %96, i32 97, i32 232, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %87
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %123

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107, %86
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = call i32 @slice_del(%struct.SN_env* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %2, align 4
  br label %323

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %99, %48
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %126, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %323

134:                                              ; preds = %123
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %9, align 4
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp sle i32 %152, %155
  br i1 %156, label %187, label %157

157:                                              ; preds = %134
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %158, i32 0, i32 4
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %160, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = ashr i32 %168, 5
  %170 = icmp ne i32 %169, 3
  br i1 %170, label %187, label %171

171:                                              ; preds = %157
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %172, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %174, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = and i32 %182, 31
  %184 = ashr i32 278560, %183
  %185 = and i32 %184, 1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %171, %157, %134
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  store i32 0, i32* %2, align 4
  br label %323

191:                                              ; preds = %171
  %192 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %193 = load i32, i32* @a_7, align 4
  %194 = call i32 @find_among_b(%struct.SN_env* %192, i32 %193, i32 6)
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* %4, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %191
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  store i32 0, i32* %2, align 4
  br label %323

201:                                              ; preds = %191
  %202 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %203 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* %4, align 4
  switch i32 %207, label %319 [
    i32 1, label %208
    i32 2, label %302
    i32 3, label %311
  ]

208:                                              ; preds = %201
  %209 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %210 = call i32 @r_R2(%struct.SN_env* %209)
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  store i32 0, i32* %2, align 4
  br label %323

217:                                              ; preds = %208
  %218 = load i32, i32* %10, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %2, align 4
  br label %323

222:                                              ; preds = %217
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %225, %228
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %232 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = icmp sle i32 %233, %236
  br i1 %237, label %251, label %238

238:                                              ; preds = %222
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %239, i32 0, i32 4
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %243 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %241, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 115
  br i1 %250, label %251, label %252

251:                                              ; preds = %238, %222
  br label %257

252:                                              ; preds = %238
  %253 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %254 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %254, align 4
  br label %294

257:                                              ; preds = %251
  %258 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %259 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sub nsw i32 %260, %261
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %266 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = icmp sle i32 %267, %270
  br i1 %271, label %285, label %272

272:                                              ; preds = %257
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %273, i32 0, i32 4
  %275 = load i8*, i8** %274, align 8
  %276 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %277 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %275, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp ne i32 %283, 116
  br i1 %284, label %285, label %289

285:                                              ; preds = %272, %257
  %286 = load i32, i32* %9, align 4
  %287 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %288 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 4
  store i32 0, i32* %2, align 4
  br label %323

289:                                              ; preds = %272
  %290 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %291 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %289, %252
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = call i32 @slice_del(%struct.SN_env* %295)
  store i32 %296, i32* %12, align 4
  %297 = load i32, i32* %12, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %294
  %300 = load i32, i32* %12, align 4
  store i32 %300, i32* %2, align 4
  br label %323

301:                                              ; preds = %294
  br label %319

302:                                              ; preds = %201
  %303 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %304 = load i32, i32* @s_31, align 4
  %305 = call i32 @slice_from_s(%struct.SN_env* %303, i32 1, i32 %304)
  store i32 %305, i32* %13, align 4
  %306 = load i32, i32* %13, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %302
  %309 = load i32, i32* %13, align 4
  store i32 %309, i32* %2, align 4
  br label %323

310:                                              ; preds = %302
  br label %319

311:                                              ; preds = %201
  %312 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %313 = call i32 @slice_del(%struct.SN_env* %312)
  store i32 %313, i32* %14, align 4
  %314 = load i32, i32* %14, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %311
  %317 = load i32, i32* %14, align 4
  store i32 %317, i32* %2, align 4
  br label %323

318:                                              ; preds = %311
  br label %319

319:                                              ; preds = %201, %318, %310, %301
  %320 = load i32, i32* %9, align 4
  %321 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %322 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %321, i32 0, i32 3
  store i32 %320, i32* %322, align 4
  store i32 1, i32* %2, align 4
  br label %323

323:                                              ; preds = %319, %316, %308, %299, %285, %220, %213, %197, %187, %133, %120
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i64 @out_grouping_b(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
