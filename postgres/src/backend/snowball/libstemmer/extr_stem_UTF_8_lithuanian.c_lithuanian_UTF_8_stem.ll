; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_lithuanian.c_lithuanian_UTF_8_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_lithuanian.c_lithuanian_UTF_8_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i8*, i32 }

@g_v = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lithuanian_UTF_8_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %1
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 97
  br i1 %56, label %57, label %61

57:                                               ; preds = %45, %1
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %99

61:                                               ; preds = %45
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @len_utf8(i8* %71)
  %73 = icmp sgt i32 %72, 6
  br i1 %73, label %78, label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  br label %99

78:                                               ; preds = %61
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %86 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @skip_utf8(i8* %81, i32 %84, i32 0, i32 %87, i32 1)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %99

95:                                               ; preds = %78
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %91, %74, %57
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = load i32, i32* @g_v, align 4
  %102 = call i32 @out_grouping_U(%struct.SN_env* %100, i32 %101, i32 97, i32 371, i32 1)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %131

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = load i32, i32* @g_v, align 4
  %114 = call i32 @in_grouping_U(%struct.SN_env* %112, i32 %113, i32 97, i32 371, i32 1)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %131

118:                                              ; preds = %106
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %118, %117, %105
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %147, %150
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = call i32 @r_fix_conflicts(%struct.SN_env* %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %131
  br label %164

158:                                              ; preds = %131
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %2, align 4
  br label %312

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %157
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %174, %177
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %181 = call i32 @r_step1(%struct.SN_env* %180)
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %164
  br label %191

185:                                              ; preds = %164
  %186 = load i32, i32* %13, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load i32, i32* %13, align 4
  store i32 %189, i32* %2, align 4
  br label %312

190:                                              ; preds = %185
  br label %191

191:                                              ; preds = %190, %184
  %192 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %193 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sub nsw i32 %194, %195
  %197 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %198 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 4
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %203 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %201, %204
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = call i32 @r_fix_chdz(%struct.SN_env* %207)
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %15, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %191
  br label %218

212:                                              ; preds = %191
  %213 = load i32, i32* %15, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i32, i32* %15, align 4
  store i32 %216, i32* %2, align 4
  br label %312

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %217, %211
  %219 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %220 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sub nsw i32 %221, %222
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %228, %231
  store i32 %232, i32* %16, align 4
  %233 = load i32, i32* %16, align 4
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = call i32 @r_step2(%struct.SN_env* %234)
  store i32 %235, i32* %17, align 4
  %236 = load i32, i32* %17, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %218
  br label %245

239:                                              ; preds = %218
  %240 = load i32, i32* %17, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = load i32, i32* %17, align 4
  store i32 %243, i32* %2, align 4
  br label %312

244:                                              ; preds = %239
  br label %245

245:                                              ; preds = %244, %238
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %16, align 4
  %250 = sub nsw i32 %248, %249
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 4
  %253 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %254 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %257 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %255, %258
  store i32 %259, i32* %18, align 4
  %260 = load i32, i32* %18, align 4
  %261 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %262 = call i32 @r_fix_chdz(%struct.SN_env* %261)
  store i32 %262, i32* %19, align 4
  %263 = load i32, i32* %19, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %245
  br label %272

266:                                              ; preds = %245
  %267 = load i32, i32* %19, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %266
  %270 = load i32, i32* %19, align 4
  store i32 %270, i32* %2, align 4
  br label %312

271:                                              ; preds = %266
  br label %272

272:                                              ; preds = %271, %265
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %18, align 4
  %277 = sub nsw i32 %275, %276
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 4
  %280 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %281 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %282, %285
  store i32 %286, i32* %20, align 4
  %287 = load i32, i32* %20, align 4
  %288 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %289 = call i32 @r_fix_gd(%struct.SN_env* %288)
  store i32 %289, i32* %21, align 4
  %290 = load i32, i32* %21, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %272
  br label %299

293:                                              ; preds = %272
  %294 = load i32, i32* %21, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = load i32, i32* %21, align 4
  store i32 %297, i32* %2, align 4
  br label %312

298:                                              ; preds = %293
  br label %299

299:                                              ; preds = %298, %292
  %300 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %301 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* %20, align 4
  %304 = sub nsw i32 %302, %303
  %305 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %306 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %305, i32 0, i32 2
  store i32 %304, i32* %306, align 4
  %307 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %308 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %311 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %310, i32 0, i32 2
  store i32 %309, i32* %311, align 4
  store i32 1, i32* %2, align 4
  br label %312

312:                                              ; preds = %299, %296, %269, %242, %215, %188, %161
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local i32 @len_utf8(i8*) #1

declare dso_local i32 @skip_utf8(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @out_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @in_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @r_fix_conflicts(%struct.SN_env*) #1

declare dso_local i32 @r_step1(%struct.SN_env*) #1

declare dso_local i32 @r_fix_chdz(%struct.SN_env*) #1

declare dso_local i32 @r_step2(%struct.SN_env*) #1

declare dso_local i32 @r_fix_gd(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
