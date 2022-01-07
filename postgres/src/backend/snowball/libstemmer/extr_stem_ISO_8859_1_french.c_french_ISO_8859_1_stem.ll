; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_french.c_french_ISO_8859_1_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_french.c_french_ISO_8859_1_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i8*, i32 }

@s_33 = common dso_local global i32 0, align 4
@s_34 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @french_ISO_8859_1_stem(%struct.SN_env* %0) #0 {
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = call i32 @r_prelude(%struct.SN_env* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %39

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %375

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = call i32 @r_mark_regions(%struct.SN_env* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %54

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %375

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %47
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %67, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %83, %86
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %91, %94
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = call i32 @r_standard_suffix(%struct.SN_env* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %54
  br label %108

102:                                              ; preds = %54
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %2, align 4
  br label %375

107:                                              ; preds = %102
  br label %146

108:                                              ; preds = %101
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = call i32 @r_i_verb_suffix(%struct.SN_env* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  br label %127

121:                                              ; preds = %108
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %2, align 4
  br label %375

126:                                              ; preds = %121
  br label %146

127:                                              ; preds = %120
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = call i32 @r_verb_suffix(%struct.SN_env* %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  br label %270

140:                                              ; preds = %127
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %2, align 4
  br label %375

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %126, %107
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %153 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %155 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %158 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %156, %159
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %169, %172
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp sle i32 %177, %180
  br i1 %181, label %195, label %182

182:                                              ; preds = %146
  %183 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %184 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %183, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %187 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %185, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 89
  br i1 %194, label %195, label %196

195:                                              ; preds = %182, %146
  br label %214

196:                                              ; preds = %182
  %197 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %198 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %198, align 8
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 8
  %206 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %207 = load i32, i32* @s_33, align 4
  %208 = call i32 @slice_from_s(%struct.SN_env* %206, i32 1, i32 %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %196
  %212 = load i32, i32* %16, align 4
  store i32 %212, i32* %2, align 4
  br label %375

213:                                              ; preds = %196
  br label %268

214:                                              ; preds = %195
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sub nsw i32 %217, %218
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %223 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %226 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp sle i32 %224, %227
  br i1 %228, label %242, label %229

229:                                              ; preds = %214
  %230 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %231 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %230, i32 0, i32 4
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %234 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %232, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp ne i32 %240, 231
  br i1 %241, label %242, label %250

242:                                              ; preds = %229, %214
  %243 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %244 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %14, align 4
  %247 = sub nsw i32 %245, %246
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  br label %269

250:                                              ; preds = %229
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %252, align 8
  %255 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %256 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %259 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %258, i32 0, i32 5
  store i32 %257, i32* %259, align 8
  %260 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %261 = load i32, i32* @s_34, align 4
  %262 = call i32 @slice_from_s(%struct.SN_env* %260, i32 1, i32 %261)
  store i32 %262, i32* %17, align 4
  %263 = load i32, i32* %17, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %250
  %266 = load i32, i32* %17, align 4
  store i32 %266, i32* %2, align 4
  br label %375

267:                                              ; preds = %250
  br label %268

268:                                              ; preds = %267, %213
  br label %269

269:                                              ; preds = %268, %242
  br label %289

270:                                              ; preds = %139
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sub nsw i32 %273, %274
  %276 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %277 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = call i32 @r_residual_suffix(%struct.SN_env* %278)
  store i32 %279, i32* %18, align 4
  %280 = load i32, i32* %18, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %270
  br label %290

283:                                              ; preds = %270
  %284 = load i32, i32* %18, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load i32, i32* %18, align 4
  store i32 %287, i32* %2, align 4
  br label %375

288:                                              ; preds = %283
  br label %289

289:                                              ; preds = %288, %269
  br label %290

290:                                              ; preds = %289, %282
  %291 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %292 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sub nsw i32 %293, %294
  %296 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %297 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %299 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %302 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %300, %303
  store i32 %304, i32* %19, align 4
  %305 = load i32, i32* %19, align 4
  %306 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %307 = call i32 @r_un_double(%struct.SN_env* %306)
  store i32 %307, i32* %20, align 4
  %308 = load i32, i32* %20, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %290
  br label %317

311:                                              ; preds = %290
  %312 = load i32, i32* %20, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = load i32, i32* %20, align 4
  store i32 %315, i32* %2, align 4
  br label %375

316:                                              ; preds = %311
  br label %317

317:                                              ; preds = %316, %310
  %318 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %319 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %19, align 4
  %322 = sub nsw i32 %320, %321
  %323 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %324 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %323, i32 0, i32 0
  store i32 %322, i32* %324, align 8
  %325 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %326 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %329 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = sub nsw i32 %327, %330
  store i32 %331, i32* %21, align 4
  %332 = load i32, i32* %21, align 4
  %333 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %334 = call i32 @r_un_accent(%struct.SN_env* %333)
  store i32 %334, i32* %22, align 4
  %335 = load i32, i32* %22, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %317
  br label %344

338:                                              ; preds = %317
  %339 = load i32, i32* %22, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i32, i32* %22, align 4
  store i32 %342, i32* %2, align 4
  br label %375

343:                                              ; preds = %338
  br label %344

344:                                              ; preds = %343, %337
  %345 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %346 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* %21, align 4
  %349 = sub nsw i32 %347, %348
  %350 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %351 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %350, i32 0, i32 0
  store i32 %349, i32* %351, align 8
  %352 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %353 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %356 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %355, i32 0, i32 0
  store i32 %354, i32* %356, align 8
  %357 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %358 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  store i32 %359, i32* %23, align 4
  %360 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %361 = call i32 @r_postlude(%struct.SN_env* %360)
  store i32 %361, i32* %24, align 4
  %362 = load i32, i32* %24, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %344
  br label %371

365:                                              ; preds = %344
  %366 = load i32, i32* %24, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %365
  %369 = load i32, i32* %24, align 4
  store i32 %369, i32* %2, align 4
  br label %375

370:                                              ; preds = %365
  br label %371

371:                                              ; preds = %370, %364
  %372 = load i32, i32* %23, align 4
  %373 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %374 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %373, i32 0, i32 0
  store i32 %372, i32* %374, align 8
  store i32 1, i32* %2, align 4
  br label %375

375:                                              ; preds = %371, %368, %341, %314, %286, %265, %211, %143, %124, %105, %51, %36
  %376 = load i32, i32* %2, align 4
  ret i32 %376
}

declare dso_local i32 @r_prelude(%struct.SN_env*) #1

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_standard_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_i_verb_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_verb_suffix(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_residual_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_un_double(%struct.SN_env*) #1

declare dso_local i32 @r_un_accent(%struct.SN_env*) #1

declare dso_local i32 @r_postlude(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
