; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_french.c_french_UTF_8_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_french.c_french_UTF_8_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i8*, i32 }

@s_37 = common dso_local global i32 0, align 4
@s_38 = common dso_local global i32 0, align 4
@s_39 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @french_UTF_8_stem(%struct.SN_env* %0) #0 {
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
  br label %355

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
  br label %355

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
  br label %355

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
  br label %355

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
  br label %250

140:                                              ; preds = %127
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %2, align 4
  br label %355

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
  %207 = load i32, i32* @s_37, align 4
  %208 = call i32 @slice_from_s(%struct.SN_env* %206, i32 1, i32 %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %196
  %212 = load i32, i32* %16, align 4
  store i32 %212, i32* %2, align 4
  br label %355

213:                                              ; preds = %196
  br label %248

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
  %223 = load i32, i32* @s_38, align 4
  %224 = call i32 @eq_s_b(%struct.SN_env* %222, i32 2, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %234, label %226

226:                                              ; preds = %214
  %227 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %228 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sub nsw i32 %229, %230
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  br label %249

234:                                              ; preds = %214
  %235 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %236 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %238, i32 0, i32 5
  store i32 %237, i32* %239, align 8
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = load i32, i32* @s_39, align 4
  %242 = call i32 @slice_from_s(%struct.SN_env* %240, i32 1, i32 %241)
  store i32 %242, i32* %17, align 4
  %243 = load i32, i32* %17, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %234
  %246 = load i32, i32* %17, align 4
  store i32 %246, i32* %2, align 4
  br label %355

247:                                              ; preds = %234
  br label %248

248:                                              ; preds = %247, %213
  br label %249

249:                                              ; preds = %248, %226
  br label %269

250:                                              ; preds = %139
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sub nsw i32 %253, %254
  %256 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %257 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  %258 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %259 = call i32 @r_residual_suffix(%struct.SN_env* %258)
  store i32 %259, i32* %18, align 4
  %260 = load i32, i32* %18, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %250
  br label %270

263:                                              ; preds = %250
  %264 = load i32, i32* %18, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = load i32, i32* %18, align 4
  store i32 %267, i32* %2, align 4
  br label %355

268:                                              ; preds = %263
  br label %269

269:                                              ; preds = %268, %249
  br label %270

270:                                              ; preds = %269, %262
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sub nsw i32 %273, %274
  %276 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %277 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = sub nsw i32 %280, %283
  store i32 %284, i32* %19, align 4
  %285 = load i32, i32* %19, align 4
  %286 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %287 = call i32 @r_un_double(%struct.SN_env* %286)
  store i32 %287, i32* %20, align 4
  %288 = load i32, i32* %20, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %270
  br label %297

291:                                              ; preds = %270
  %292 = load i32, i32* %20, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = load i32, i32* %20, align 4
  store i32 %295, i32* %2, align 4
  br label %355

296:                                              ; preds = %291
  br label %297

297:                                              ; preds = %296, %290
  %298 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %299 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %19, align 4
  %302 = sub nsw i32 %300, %301
  %303 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %304 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 8
  %305 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %306 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %309 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = sub nsw i32 %307, %310
  store i32 %311, i32* %21, align 4
  %312 = load i32, i32* %21, align 4
  %313 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %314 = call i32 @r_un_accent(%struct.SN_env* %313)
  store i32 %314, i32* %22, align 4
  %315 = load i32, i32* %22, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %297
  br label %324

318:                                              ; preds = %297
  %319 = load i32, i32* %22, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  %322 = load i32, i32* %22, align 4
  store i32 %322, i32* %2, align 4
  br label %355

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  %325 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %326 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* %21, align 4
  %329 = sub nsw i32 %327, %328
  %330 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %331 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  %332 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %333 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  %337 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %338 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  store i32 %339, i32* %23, align 4
  %340 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %341 = call i32 @r_postlude(%struct.SN_env* %340)
  store i32 %341, i32* %24, align 4
  %342 = load i32, i32* %24, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %324
  br label %351

345:                                              ; preds = %324
  %346 = load i32, i32* %24, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %345
  %349 = load i32, i32* %24, align 4
  store i32 %349, i32* %2, align 4
  br label %355

350:                                              ; preds = %345
  br label %351

351:                                              ; preds = %350, %344
  %352 = load i32, i32* %23, align 4
  %353 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %354 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %353, i32 0, i32 0
  store i32 %352, i32* %354, align 8
  store i32 1, i32* %2, align 4
  br label %355

355:                                              ; preds = %351, %348, %321, %294, %266, %245, %211, %143, %124, %105, %51, %36
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local i32 @r_prelude(%struct.SN_env*) #1

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_standard_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_i_verb_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_verb_suffix(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

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
