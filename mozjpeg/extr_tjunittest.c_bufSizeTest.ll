; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_bufSizeTest.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_bufSizeTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Buffer size regression test\0A\00", align 1
@TJ_NUMSAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%.4d x %.4d\08\08\08\08\08\08\08\08\08\08\08\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@alloc = common dso_local global i64 0, align 8
@doYUV = common dso_local global i64 0, align 8
@pad = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global i32 0, align 4
@TJPF_BGRX = common dso_local global i32 0, align 4
@TJFLAG_NOREALLOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Done.      \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufSizeTest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = call i32* (...) @tjInitCompress()
  store i32* %10, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (...) @_throwtj()
  br label %14

14:                                               ; preds = %12, %0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %262, %14
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TJ_NUMSAMP, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %265

20:                                               ; preds = %16
  store i32 1, i32* %1, align 4
  br label %21

21:                                               ; preds = %258, %20
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 48
  br i1 %23, label %24, label %261

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2048, i32 48
  store i32 %28, i32* %9, align 4
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %254, %24
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %257

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = srem i32 %34, 100
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %2, align 4
  %44 = mul nsw i32 %42, %43
  %45 = mul nsw i32 %44, 4
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %5, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %41
  %52 = load i64, i64* @alloc, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* @doYUV, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %54, %51
  %58 = load i64, i64* @doYUV, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @pad, align 4
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @tjBufSizeYUV2(i32 %61, i32 %62, i32 %63, i32 %64)
  store i64 %65, i64* %8, align 8
  br label %71

66:                                               ; preds = %57
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i64 @tjBufSize(i32 %67, i32 %68, i32 %69)
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @tjAlloc(i64 %72)
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %6, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  br label %79

79:                                               ; preds = %78, %54
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %103, %79
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* %2, align 4
  %84 = mul nsw i32 %82, %83
  %85 = mul nsw i32 %84, 4
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %80
  %88 = call i32 (...) @random()
  %89 = load i32, i32* @RAND_MAX, align 4
  %90 = sdiv i32 %89, 2
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  br label %102

97:                                               ; preds = %87
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 -1, i8* %101, align 1
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %80

106:                                              ; preds = %80
  %107 = load i64, i64* @doYUV, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i32*, i32** %7, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %1, align 4
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* @TJPF_BGRX, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* @pad, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @tjEncodeYUV3(i32* %110, i8* %111, i32 %112, i32 0, i32 %113, i32 %114, i8* %115, i32 %116, i32 %117, i32 0)
  %119 = call i32 @_tj(i32 %118)
  br label %136

120:                                              ; preds = %106
  %121 = load i32*, i32** %7, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* %1, align 4
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @TJPF_BGRX, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i64, i64* @alloc, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %132

130:                                              ; preds = %120
  %131 = load i32, i32* @TJFLAG_NOREALLOC, align 4
  br label %132

132:                                              ; preds = %130, %129
  %133 = phi i32 [ 0, %129 ], [ %131, %130 ]
  %134 = call i32 @tjCompress2(i32* %121, i8* %122, i32 %123, i32 0, i32 %124, i32 %125, i8** %6, i64* %8, i32 %126, i32 100, i32 %133)
  %135 = call i32 @_tj(i32 %134)
  br label %136

136:                                              ; preds = %132, %109
  %137 = load i8*, i8** %5, align 8
  %138 = call i32 @free(i8* %137)
  store i8* null, i8** %5, align 8
  %139 = load i64, i64* @alloc, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i64, i64* @doYUV, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141, %136
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @tjFree(i8* %145)
  store i8* null, i8** %6, align 8
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* %1, align 4
  %150 = mul nsw i32 %148, %149
  %151 = mul nsw i32 %150, 4
  %152 = call i64 @malloc(i32 %151)
  %153 = inttoptr i64 %152 to i8*
  store i8* %153, i8** %5, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %147
  %158 = load i64, i64* @alloc, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i64, i64* @doYUV, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %160, %157
  %164 = load i64, i64* @doYUV, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* %2, align 4
  %168 = load i32, i32* @pad, align 4
  %169 = load i32, i32* %1, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i64 @tjBufSizeYUV2(i32 %167, i32 %168, i32 %169, i32 %170)
  store i64 %171, i64* %8, align 8
  br label %177

172:                                              ; preds = %163
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* %1, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i64 @tjBufSize(i32 %173, i32 %174, i32 %175)
  store i64 %176, i64* %8, align 8
  br label %177

177:                                              ; preds = %172, %166
  %178 = load i64, i64* %8, align 8
  %179 = call i64 @tjAlloc(i64 %178)
  %180 = inttoptr i64 %179 to i8*
  store i8* %180, i8** %6, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %177
  br label %185

185:                                              ; preds = %184, %160
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %209, %185
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* %2, align 4
  %189 = load i32, i32* %1, align 4
  %190 = mul nsw i32 %188, %189
  %191 = mul nsw i32 %190, 4
  %192 = icmp slt i32 %187, %191
  br i1 %192, label %193, label %212

193:                                              ; preds = %186
  %194 = call i32 (...) @random()
  %195 = load i32, i32* @RAND_MAX, align 4
  %196 = sdiv i32 %195, 2
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load i8*, i8** %5, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  store i8 0, i8* %202, align 1
  br label %208

203:                                              ; preds = %193
  %204 = load i8*, i8** %5, align 8
  %205 = load i32, i32* %3, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8 -1, i8* %207, align 1
  br label %208

208:                                              ; preds = %203, %198
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %3, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %3, align 4
  br label %186

212:                                              ; preds = %186
  %213 = load i64, i64* @doYUV, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %212
  %216 = load i32*, i32** %7, align 8
  %217 = load i8*, i8** %5, align 8
  %218 = load i32, i32* %2, align 4
  %219 = load i32, i32* %1, align 4
  %220 = load i32, i32* @TJPF_BGRX, align 4
  %221 = load i8*, i8** %6, align 8
  %222 = load i32, i32* @pad, align 4
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @tjEncodeYUV3(i32* %216, i8* %217, i32 %218, i32 0, i32 %219, i32 %220, i8* %221, i32 %222, i32 %223, i32 0)
  %225 = call i32 @_tj(i32 %224)
  br label %242

226:                                              ; preds = %212
  %227 = load i32*, i32** %7, align 8
  %228 = load i8*, i8** %5, align 8
  %229 = load i32, i32* %2, align 4
  %230 = load i32, i32* %1, align 4
  %231 = load i32, i32* @TJPF_BGRX, align 4
  %232 = load i32, i32* %4, align 4
  %233 = load i64, i64* @alloc, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %226
  br label %238

236:                                              ; preds = %226
  %237 = load i32, i32* @TJFLAG_NOREALLOC, align 4
  br label %238

238:                                              ; preds = %236, %235
  %239 = phi i32 [ 0, %235 ], [ %237, %236 ]
  %240 = call i32 @tjCompress2(i32* %227, i8* %228, i32 %229, i32 0, i32 %230, i32 %231, i8** %6, i64* %8, i32 %232, i32 100, i32 %239)
  %241 = call i32 @_tj(i32 %240)
  br label %242

242:                                              ; preds = %238, %215
  %243 = load i8*, i8** %5, align 8
  %244 = call i32 @free(i8* %243)
  store i8* null, i8** %5, align 8
  %245 = load i64, i64* @alloc, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i64, i64* @doYUV, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247, %242
  %251 = load i8*, i8** %6, align 8
  %252 = call i32 @tjFree(i8* %251)
  store i8* null, i8** %6, align 8
  br label %253

253:                                              ; preds = %250, %247
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %2, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %2, align 4
  br label %29

257:                                              ; preds = %29
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %1, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %1, align 4
  br label %21

261:                                              ; preds = %21
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %4, align 4
  br label %16

265:                                              ; preds = %16
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265
  %268 = load i8*, i8** %5, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i8*, i8** %5, align 8
  %272 = call i32 @free(i8* %271)
  br label %273

273:                                              ; preds = %270, %267
  %274 = load i8*, i8** %6, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i8*, i8** %6, align 8
  %278 = call i32 @tjFree(i8* %277)
  br label %279

279:                                              ; preds = %276, %273
  %280 = load i32*, i32** %7, align 8
  %281 = icmp ne i32* %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32*, i32** %7, align 8
  %284 = call i32 @tjDestroy(i32* %283)
  br label %285

285:                                              ; preds = %282, %279
  ret void
}

declare dso_local i32* @tjInitCompress(...) #1

declare dso_local i32 @_throwtj(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i64 @tjBufSizeYUV2(i32, i32, i32, i32) #1

declare dso_local i64 @tjBufSize(i32, i32, i32) #1

declare dso_local i64 @tjAlloc(i64) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @_tj(i32) #1

declare dso_local i32 @tjEncodeYUV3(i32*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @tjCompress2(i32*, i8*, i32, i32, i32, i32, i8**, i64*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @tjFree(i8*) #1

declare dso_local i32 @tjDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
