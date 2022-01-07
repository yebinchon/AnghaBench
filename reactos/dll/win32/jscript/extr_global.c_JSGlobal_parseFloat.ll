; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_parseFloat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_parseFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@NAN = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MAXLONGLONG = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @JSGlobal_parseFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSGlobal_parseFloat(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %24 = load i64, i64* @TRUE, align 8
  store i64 %24, i64* %19, align 8
  %25 = load i64, i64* @TRUE, align 8
  store i64 %25, i64* %20, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %6
  %29 = load i32*, i32** %13, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @NAN, align 4
  %33 = call i32 @jsval_number(i32 %32)
  %34 = load i32*, i32** %13, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @S_OK, align 4
  store i32 %36, i32* %7, align 4
  br label %311

37:                                               ; preds = %6
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @to_flat_string(i32* %38, i32 %41, i32** %16, i8** %18)
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %21, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %21, align 4
  store i32 %47, i32* %7, align 4
  br label %311

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i8*, i8** %18, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @iswspace(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %18, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %18, align 8
  br label %49

57:                                               ; preds = %49
  %58 = load i8*, i8** %18, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 43
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %18, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %18, align 8
  br label %75

65:                                               ; preds = %57
  %66 = load i8*, i8** %18, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i64, i64* @FALSE, align 8
  store i64 %71, i64* %20, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %18, align 8
  br label %74

74:                                               ; preds = %70, %65
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i8*, i8** %18, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @iswdigit(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i64, i64* @FALSE, align 8
  store i64 %81, i64* %19, align 8
  br label %82

82:                                               ; preds = %80, %75
  br label %83

83:                                               ; preds = %109, %82
  %84 = load i8*, i8** %18, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @iswdigit(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = load i32, i32* %14, align 4
  %90 = mul nsw i32 %89, 10
  %91 = load i8*, i8** %18, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %18, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  %95 = add nsw i32 %90, %94
  %96 = sub nsw i32 %95, 48
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @MAXLONGLONG, align 4
  %99 = sdiv i32 %98, 10
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %104, label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101, %88
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  br label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %107
  br label %83

110:                                              ; preds = %104, %83
  br label %111

111:                                              ; preds = %116, %110
  %112 = load i8*, i8** %18, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i64 @iswdigit(i8 signext %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  %119 = load i8*, i8** %18, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %18, align 8
  br label %111

121:                                              ; preds = %111
  %122 = load i8*, i8** %18, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 46
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i8*, i8** %18, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %18, align 8
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i8*, i8** %18, align 8
  %131 = load i8, i8* %130, align 1
  %132 = call i64 @iswdigit(i8 signext %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i64, i64* @FALSE, align 8
  store i64 %135, i64* %19, align 8
  br label %136

136:                                              ; preds = %134, %129
  br label %137

137:                                              ; preds = %159, %136
  %138 = load i8*, i8** %18, align 8
  %139 = load i8, i8* %138, align 1
  %140 = call i64 @iswdigit(i8 signext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %137
  %143 = load i32, i32* %14, align 4
  %144 = mul nsw i32 %143, 10
  %145 = load i8*, i8** %18, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %18, align 8
  %147 = load i8, i8* %145, align 1
  %148 = sext i8 %147 to i32
  %149 = add nsw i32 %144, %148
  %150 = sub nsw i32 %149, 48
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @MAXLONGLONG, align 4
  %153 = sdiv i32 %152, 10
  %154 = icmp sgt i32 %151, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %142
  %156 = load i32, i32* %15, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155, %142
  br label %163

159:                                              ; preds = %155
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %17, align 4
  br label %137

163:                                              ; preds = %158, %137
  br label %164

164:                                              ; preds = %169, %163
  %165 = load i8*, i8** %18, align 8
  %166 = load i8, i8* %165, align 1
  %167 = call i64 @iswdigit(i8 signext %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i8*, i8** %18, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %18, align 8
  br label %164

172:                                              ; preds = %164
  %173 = load i8*, i8** %18, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %268

177:                                              ; preds = %172
  %178 = load i64, i64* %19, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %268, label %180

180:                                              ; preds = %177
  %181 = load i8*, i8** %18, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 101
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load i8*, i8** %18, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 69
  br i1 %189, label %190, label %268

190:                                              ; preds = %185, %180
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %191 = load i8*, i8** %18, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %18, align 8
  %193 = load i8*, i8** %18, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 43
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load i8*, i8** %18, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %18, align 8
  br label %209

200:                                              ; preds = %190
  %201 = load i8*, i8** %18, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 45
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  store i32 -1, i32* %22, align 4
  %206 = load i8*, i8** %18, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %18, align 8
  br label %208

208:                                              ; preds = %205, %200
  br label %209

209:                                              ; preds = %208, %197
  br label %210

210:                                              ; preds = %232, %209
  %211 = load i8*, i8** %18, align 8
  %212 = load i8, i8* %211, align 1
  %213 = call i64 @iswdigit(i8 signext %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %233

215:                                              ; preds = %210
  %216 = load i32, i32* %23, align 4
  %217 = load i32, i32* @INT_MAX, align 4
  %218 = sdiv i32 %217, 10
  %219 = icmp sgt i32 %216, %218
  br i1 %219, label %230, label %220

220:                                              ; preds = %215
  %221 = load i32, i32* %23, align 4
  %222 = mul nsw i32 %221, 10
  %223 = load i8*, i8** %18, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %18, align 8
  %225 = load i8, i8* %223, align 1
  %226 = sext i8 %225 to i32
  %227 = add nsw i32 %222, %226
  %228 = sub nsw i32 %227, 48
  store i32 %228, i32* %23, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %220, %215
  %231 = load i32, i32* @INT_MAX, align 4
  store i32 %231, i32* %23, align 4
  br label %232

232:                                              ; preds = %230, %220
  br label %210

233:                                              ; preds = %210
  %234 = load i32, i32* %22, align 4
  %235 = load i32, i32* %23, align 4
  %236 = mul nsw i32 %235, %234
  store i32 %236, i32* %23, align 4
  %237 = load i32, i32* %17, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %233
  %240 = load i32, i32* %23, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %239
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %23, align 4
  %245 = add nsw i32 %243, %244
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i32, i32* @INT_MIN, align 4
  store i32 %248, i32* %17, align 4
  br label %267

249:                                              ; preds = %242, %239, %233
  %250 = load i32, i32* %17, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %249
  %253 = load i32, i32* %23, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %252
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %23, align 4
  %258 = add nsw i32 %256, %257
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load i32, i32* @INT_MAX, align 4
  store i32 %261, i32* %17, align 4
  br label %266

262:                                              ; preds = %255, %252, %249
  %263 = load i32, i32* %23, align 4
  %264 = load i32, i32* %17, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %17, align 4
  br label %266

266:                                              ; preds = %262, %260
  br label %267

267:                                              ; preds = %266, %247
  br label %268

268:                                              ; preds = %267, %185, %177, %172
  %269 = load i32*, i32** %16, align 8
  %270 = call i32 @jsstr_release(i32* %269)
  %271 = load i64, i64* %19, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %268
  %274 = load i32*, i32** %13, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %280

276:                                              ; preds = %273
  %277 = load i32, i32* @NAN, align 4
  %278 = call i32 @jsval_number(i32 %277)
  %279 = load i32*, i32** %13, align 8
  store i32 %278, i32* %279, align 4
  br label %280

280:                                              ; preds = %276, %273
  %281 = load i32, i32* @S_OK, align 4
  store i32 %281, i32* %7, align 4
  br label %311

282:                                              ; preds = %268
  %283 = load i64, i64* %20, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %282
  %286 = load i32, i32* %14, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %14, align 4
  br label %288

288:                                              ; preds = %285, %282
  %289 = load i32*, i32** %13, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %309

291:                                              ; preds = %288
  %292 = load i32, i32* %17, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %291
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %17, align 4
  %297 = call i32 @pow(i32 10, i32 %296)
  %298 = mul nsw i32 %295, %297
  br label %305

299:                                              ; preds = %291
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* %17, align 4
  %302 = sub nsw i32 0, %301
  %303 = call i32 @pow(i32 10, i32 %302)
  %304 = sdiv i32 %300, %303
  br label %305

305:                                              ; preds = %299, %294
  %306 = phi i32 [ %298, %294 ], [ %304, %299 ]
  %307 = call i32 @jsval_number(i32 %306)
  %308 = load i32*, i32** %13, align 8
  store i32 %307, i32* %308, align 4
  br label %309

309:                                              ; preds = %305, %288
  %310 = load i32, i32* @S_OK, align 4
  store i32 %310, i32* %7, align 4
  br label %311

311:                                              ; preds = %309, %280, %46, %35
  %312 = load i32, i32* %7, align 4
  ret i32 %312
}

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @to_flat_string(i32*, i32, i32**, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @iswspace(i8 signext) #1

declare dso_local i64 @iswdigit(i8 signext) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
