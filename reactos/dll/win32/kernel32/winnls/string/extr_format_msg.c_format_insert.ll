; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_format_msg.c_format_insert.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_format_msg.c_format_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_args = type { i32, i64 }

@format_insert.fmt_u = internal constant [3 x i8] c"%u\00", align 1
@format_insert.nullW = internal constant [7 x i8] c"(null)\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i8*, i32, %struct.format_args*, i8**)* @format_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_insert(i64 %0, i32 %1, i8* %2, i32 %3, %struct.format_args* %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.format_args*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.format_args* %4, %struct.format_args** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i8* null, i8** %14, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 33
  br i1 %29, label %30, label %83

30:                                               ; preds = %6
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.format_args*, %struct.format_args** %12, align 8
  %34 = call signext i8 @get_arg(i32 %31, i32 %32, %struct.format_args* %33)
  store i8 %34, i8* %17, align 1
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i8, i8* %17, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %37, %30
  %41 = load i8, i8* %17, align 1
  %42 = sext i8 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %19, align 8
  %44 = load i8*, i8** %19, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @format_insert.nullW, i64 0, i64 0), i8** %19, align 8
  br label %47

47:                                               ; preds = %46, %40
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load i8*, i8** %19, align 8
  %50 = call i32 @strlenW(i8* %49)
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i8* @HeapAlloc(i32 %48, i32 0, i32 %54)
  %56 = load i8**, i8*** %13, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i8**, i8*** %13, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %19, align 8
  %60 = call i32 @strcpyW(i8* %58, i8* %59)
  br label %81

61:                                               ; preds = %37
  %62 = load i8, i8* %17, align 1
  %63 = sext i8 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %20, align 8
  %65 = load i32, i32* @CP_ACP, align 4
  %66 = load i8*, i8** %20, align 8
  %67 = call i32 @MultiByteToWideChar(i32 %65, i32 0, i8* %66, i32 -1, i8* null, i32 0)
  store i32 %67, i32* %21, align 4
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load i32, i32* %21, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 1
  %72 = trunc i64 %71 to i32
  %73 = call i8* @HeapAlloc(i32 %68, i32 0, i32 %72)
  %74 = load i8**, i8*** %13, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* @CP_ACP, align 4
  %76 = load i8*, i8** %20, align 8
  %77 = load i8**, i8*** %13, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %21, align 4
  %80 = call i32 @MultiByteToWideChar(i32 %75, i32 0, i8* %76, i32 -1, i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %61, %47
  %82 = load i8*, i8** %10, align 8
  store i8* %82, i8** %7, align 8
  br label %516

83:                                               ; preds = %6
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %10, align 8
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  store i8* %86, i8** %15, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %15, align 8
  store i8 37, i8* %87, align 1
  br label %89

89:                                               ; preds = %144, %83
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 48
  br i1 %93, label %119, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %10, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 43
  br i1 %98, label %119, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 45
  br i1 %103, label %119, label %104

104:                                              ; preds = %99
  %105 = load i8*, i8** %10, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 32
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %10, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 42
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %10, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 35
  br label %119

119:                                              ; preds = %114, %109, %104, %99, %94, %89
  %120 = phi i1 [ true, %109 ], [ true, %104 ], [ true, %99 ], [ true, %94 ], [ true, %89 ], [ %118, %114 ]
  br i1 %120, label %121, label %145

121:                                              ; preds = %119
  %122 = load i8*, i8** %10, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 42
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load i8*, i8** %15, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.format_args*, %struct.format_args** %12, align 8
  %131 = call signext i8 @get_arg(i32 %128, i32 %129, %struct.format_args* %130)
  %132 = call i32 @sprintfW(i8* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @format_insert.fmt_u, i64 0, i64 0), i8 signext %131)
  %133 = load i8*, i8** %15, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %15, align 8
  store i32 -1, i32* %9, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %10, align 8
  br label %144

138:                                              ; preds = %121
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %10, align 8
  %141 = load i8, i8* %139, align 1
  %142 = load i8*, i8** %15, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %15, align 8
  store i8 %141, i8* %142, align 1
  br label %144

144:                                              ; preds = %138, %126
  br label %89

145:                                              ; preds = %119
  br label %146

146:                                              ; preds = %151, %145
  %147 = load i8*, i8** %10, align 8
  %148 = load i8, i8* %147, align 1
  %149 = call i64 @isdigitW(i8 signext %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i8*, i8** %10, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %10, align 8
  %154 = load i8, i8* %152, align 1
  %155 = load i8*, i8** %15, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %15, align 8
  store i8 %154, i8* %155, align 1
  br label %146

157:                                              ; preds = %146
  %158 = load i8*, i8** %10, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 46
  br i1 %161, label %162, label %198

162:                                              ; preds = %157
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %10, align 8
  %165 = load i8, i8* %163, align 1
  %166 = load i8*, i8** %15, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %15, align 8
  store i8 %165, i8* %166, align 1
  %168 = load i8*, i8** %10, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 42
  br i1 %171, label %172, label %184

172:                                              ; preds = %162
  %173 = load i8*, i8** %15, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.format_args*, %struct.format_args** %12, align 8
  %177 = call signext i8 @get_arg(i32 %174, i32 %175, %struct.format_args* %176)
  %178 = call i32 @sprintfW(i8* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @format_insert.fmt_u, i64 0, i64 0), i8 signext %177)
  %179 = load i8*, i8** %15, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %15, align 8
  store i32 -1, i32* %9, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %10, align 8
  br label %197

184:                                              ; preds = %162
  br label %185

185:                                              ; preds = %190, %184
  %186 = load i8*, i8** %10, align 8
  %187 = load i8, i8* %186, align 1
  %188 = call i64 @isdigitW(i8 signext %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load i8*, i8** %10, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %10, align 8
  %193 = load i8, i8* %191, align 1
  %194 = load i8*, i8** %15, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %15, align 8
  store i8 %193, i8* %194, align 1
  br label %185

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196, %172
  br label %198

198:                                              ; preds = %197, %157
  %199 = load i32, i32* %9, align 4
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load %struct.format_args*, %struct.format_args** %12, align 8
  %203 = getelementptr inbounds %struct.format_args, %struct.format_args* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load %struct.format_args*, %struct.format_args** %12, align 8
  %208 = getelementptr inbounds %struct.format_args, %struct.format_args* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %206, %201, %198
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.format_args*, %struct.format_args** %12, align 8
  %215 = call signext i8 @get_arg(i32 %212, i32 %213, %struct.format_args* %214)
  store i8 %215, i8* %17, align 1
  %216 = load i8*, i8** %10, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 104
  br i1 %220, label %221, label %227

221:                                              ; preds = %211
  %222 = load i8*, i8** %10, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 115
  br i1 %226, label %257, label %227

227:                                              ; preds = %221, %211
  %228 = load i8*, i8** %10, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 0
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 104
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load i8*, i8** %10, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 1
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 83
  br i1 %238, label %257, label %239

239:                                              ; preds = %233, %227
  %240 = load i64, i64* %8, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %239
  %243 = load i8*, i8** %10, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 0
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 83
  br i1 %247, label %257, label %248

248:                                              ; preds = %242, %239
  %249 = load i64, i64* %8, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %280, label %251

251:                                              ; preds = %248
  %252 = load i8*, i8** %10, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 0
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 115
  br i1 %256, label %257, label %280

257:                                              ; preds = %251, %242, %233, %221
  %258 = load i32, i32* @CP_ACP, align 4
  %259 = load i8, i8* %17, align 1
  %260 = sext i8 %259 to i64
  %261 = inttoptr i64 %260 to i8*
  %262 = call i32 @MultiByteToWideChar(i32 %258, i32 0, i8* %261, i32 -1, i8* null, i32 0)
  store i32 %262, i32* %22, align 4
  %263 = call i32 (...) @GetProcessHeap()
  %264 = load i32, i32* %22, align 4
  %265 = sext i32 %264 to i64
  %266 = mul i64 %265, 1
  %267 = trunc i64 %266 to i32
  %268 = call i8* @HeapAlloc(i32 %263, i32 0, i32 %267)
  store i8* %268, i8** %14, align 8
  %269 = load i32, i32* @CP_ACP, align 4
  %270 = load i8, i8* %17, align 1
  %271 = sext i8 %270 to i64
  %272 = inttoptr i64 %271 to i8*
  %273 = load i8*, i8** %14, align 8
  %274 = load i32, i32* %22, align 4
  %275 = call i32 @MultiByteToWideChar(i32 %269, i32 0, i8* %272, i32 -1, i8* %273, i32 %274)
  %276 = load i8*, i8** %14, align 8
  %277 = ptrtoint i8* %276 to i8
  store i8 %277, i8* %17, align 1
  %278 = load i8*, i8** %15, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %15, align 8
  store i8 115, i8* %278, align 1
  br label %454

280:                                              ; preds = %251, %248
  %281 = load i8*, i8** %10, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 0
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 104
  br i1 %285, label %286, label %292

286:                                              ; preds = %280
  %287 = load i8*, i8** %10, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 99
  br i1 %291, label %322, label %292

292:                                              ; preds = %286, %280
  %293 = load i8*, i8** %10, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 0
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 104
  br i1 %297, label %298, label %304

298:                                              ; preds = %292
  %299 = load i8*, i8** %10, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp eq i32 %302, 67
  br i1 %303, label %322, label %304

304:                                              ; preds = %298, %292
  %305 = load i64, i64* %8, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %304
  %308 = load i8*, i8** %10, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 0
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 67
  br i1 %312, label %322, label %313

313:                                              ; preds = %307, %304
  %314 = load i64, i64* %8, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %335, label %316

316:                                              ; preds = %313
  %317 = load i8*, i8** %10, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 0
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = icmp eq i32 %320, 99
  br i1 %321, label %322, label %335

322:                                              ; preds = %316, %307, %298, %286
  %323 = load i8, i8* %17, align 1
  store i8 %323, i8* %23, align 1
  %324 = call i32 (...) @GetProcessHeap()
  %325 = call i8* @HeapAlloc(i32 %324, i32 0, i32 2)
  store i8* %325, i8** %14, align 8
  %326 = load i32, i32* @CP_ACP, align 4
  %327 = load i8*, i8** %14, align 8
  %328 = call i32 @MultiByteToWideChar(i32 %326, i32 0, i8* %23, i32 1, i8* %327, i32 1)
  %329 = load i8*, i8** %14, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 1
  store i8 0, i8* %330, align 1
  %331 = load i8*, i8** %14, align 8
  %332 = ptrtoint i8* %331 to i8
  store i8 %332, i8* %17, align 1
  %333 = load i8*, i8** %15, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %15, align 8
  store i8 115, i8* %333, align 1
  br label %453

335:                                              ; preds = %316, %313
  %336 = load i8*, i8** %10, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 0
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp eq i32 %339, 108
  br i1 %340, label %341, label %347

341:                                              ; preds = %335
  %342 = load i8*, i8** %10, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 1
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp eq i32 %345, 115
  br i1 %346, label %380, label %347

347:                                              ; preds = %341, %335
  %348 = load i8*, i8** %10, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 0
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = icmp eq i32 %351, 108
  br i1 %352, label %353, label %359

353:                                              ; preds = %347
  %354 = load i8*, i8** %10, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 1
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 83
  br i1 %358, label %380, label %359

359:                                              ; preds = %353, %347
  %360 = load i8*, i8** %10, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 0
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 119
  br i1 %364, label %365, label %371

365:                                              ; preds = %359
  %366 = load i8*, i8** %10, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 1
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = icmp eq i32 %369, 115
  br i1 %370, label %380, label %371

371:                                              ; preds = %365, %359
  %372 = load i64, i64* %8, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %383, label %374

374:                                              ; preds = %371
  %375 = load i8*, i8** %10, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 0
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 83
  br i1 %379, label %380, label %383

380:                                              ; preds = %374, %365, %353, %341
  %381 = load i8*, i8** %15, align 8
  %382 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %382, i8** %15, align 8
  store i8 115, i8* %381, align 1
  br label %452

383:                                              ; preds = %374, %371
  %384 = load i8*, i8** %10, align 8
  %385 = getelementptr inbounds i8, i8* %384, i64 0
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp eq i32 %387, 108
  br i1 %388, label %389, label %395

389:                                              ; preds = %383
  %390 = load i8*, i8** %10, align 8
  %391 = getelementptr inbounds i8, i8* %390, i64 1
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp eq i32 %393, 99
  br i1 %394, label %428, label %395

395:                                              ; preds = %389, %383
  %396 = load i8*, i8** %10, align 8
  %397 = getelementptr inbounds i8, i8* %396, i64 0
  %398 = load i8, i8* %397, align 1
  %399 = sext i8 %398 to i32
  %400 = icmp eq i32 %399, 108
  br i1 %400, label %401, label %407

401:                                              ; preds = %395
  %402 = load i8*, i8** %10, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 1
  %404 = load i8, i8* %403, align 1
  %405 = sext i8 %404 to i32
  %406 = icmp eq i32 %405, 67
  br i1 %406, label %428, label %407

407:                                              ; preds = %401, %395
  %408 = load i8*, i8** %10, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 0
  %410 = load i8, i8* %409, align 1
  %411 = sext i8 %410 to i32
  %412 = icmp eq i32 %411, 119
  br i1 %412, label %413, label %419

413:                                              ; preds = %407
  %414 = load i8*, i8** %10, align 8
  %415 = getelementptr inbounds i8, i8* %414, i64 1
  %416 = load i8, i8* %415, align 1
  %417 = sext i8 %416 to i32
  %418 = icmp eq i32 %417, 99
  br i1 %418, label %428, label %419

419:                                              ; preds = %413, %407
  %420 = load i64, i64* %8, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %431, label %422

422:                                              ; preds = %419
  %423 = load i8*, i8** %10, align 8
  %424 = getelementptr inbounds i8, i8* %423, i64 0
  %425 = load i8, i8* %424, align 1
  %426 = sext i8 %425 to i32
  %427 = icmp eq i32 %426, 67
  br i1 %427, label %428, label %431

428:                                              ; preds = %422, %413, %401, %389
  %429 = load i8*, i8** %15, align 8
  %430 = getelementptr inbounds i8, i8* %429, i32 1
  store i8* %430, i8** %15, align 8
  store i8 99, i8* %429, align 1
  br label %451

431:                                              ; preds = %422, %419
  br label %432

432:                                              ; preds = %444, %431
  %433 = load i8*, i8** %10, align 8
  %434 = load i8, i8* %433, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %432
  %438 = load i8*, i8** %10, align 8
  %439 = load i8, i8* %438, align 1
  %440 = sext i8 %439 to i32
  %441 = icmp ne i32 %440, 33
  br label %442

442:                                              ; preds = %437, %432
  %443 = phi i1 [ false, %432 ], [ %441, %437 ]
  br i1 %443, label %444, label %450

444:                                              ; preds = %442
  %445 = load i8*, i8** %10, align 8
  %446 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %446, i8** %10, align 8
  %447 = load i8, i8* %445, align 1
  %448 = load i8*, i8** %15, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %449, i8** %15, align 8
  store i8 %447, i8* %448, align 1
  br label %432

450:                                              ; preds = %442
  br label %451

451:                                              ; preds = %450, %428
  br label %452

452:                                              ; preds = %451, %380
  br label %453

453:                                              ; preds = %452, %322
  br label %454

454:                                              ; preds = %453, %257
  %455 = load i8*, i8** %15, align 8
  store i8 0, i8* %455, align 1
  store i32 256, i32* %18, align 4
  br label %456

456:                                              ; preds = %486, %454
  %457 = call i32 (...) @GetProcessHeap()
  %458 = load i32, i32* %18, align 4
  %459 = sext i32 %458 to i64
  %460 = mul i64 %459, 1
  %461 = trunc i64 %460 to i32
  %462 = call i8* @HeapAlloc(i32 %457, i32 0, i32 %461)
  store i8* %462, i8** %24, align 8
  %463 = load i8*, i8** %24, align 8
  %464 = load i32, i32* %18, align 4
  %465 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %466 = load i8, i8* %17, align 1
  %467 = call i32 @snprintfW(i8* %463, i32 %464, i8* %465, i8 signext %466)
  store i32 %467, i32* %25, align 4
  %468 = load i32, i32* %25, align 4
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %474, label %470

470:                                              ; preds = %456
  %471 = load i32, i32* %25, align 4
  %472 = load i32, i32* %18, align 4
  %473 = icmp sge i32 %471, %472
  br i1 %473, label %474, label %483

474:                                              ; preds = %470, %456
  %475 = call i32 (...) @GetProcessHeap()
  %476 = load i8*, i8** %24, align 8
  %477 = call i32 @HeapFree(i32 %475, i32 0, i8* %476)
  %478 = load i32, i32* %25, align 4
  %479 = add nsw i32 %478, 1
  %480 = load i32, i32* %18, align 4
  %481 = mul nsw i32 %480, 2
  %482 = call i32 @max(i32 %479, i32 %481)
  store i32 %482, i32* %18, align 4
  br label %486

483:                                              ; preds = %470
  %484 = load i8*, i8** %24, align 8
  %485 = load i8**, i8*** %13, align 8
  store i8* %484, i8** %485, align 8
  br label %487

486:                                              ; preds = %474
  br label %456

487:                                              ; preds = %483
  br label %488

488:                                              ; preds = %500, %487
  %489 = load i8*, i8** %10, align 8
  %490 = load i8, i8* %489, align 1
  %491 = sext i8 %490 to i32
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %498

493:                                              ; preds = %488
  %494 = load i8*, i8** %10, align 8
  %495 = load i8, i8* %494, align 1
  %496 = sext i8 %495 to i32
  %497 = icmp ne i32 %496, 33
  br label %498

498:                                              ; preds = %493, %488
  %499 = phi i1 [ false, %488 ], [ %497, %493 ]
  br i1 %499, label %500, label %503

500:                                              ; preds = %498
  %501 = load i8*, i8** %10, align 8
  %502 = getelementptr inbounds i8, i8* %501, i32 1
  store i8* %502, i8** %10, align 8
  br label %488

503:                                              ; preds = %498
  %504 = load i8*, i8** %10, align 8
  %505 = load i8, i8* %504, align 1
  %506 = sext i8 %505 to i32
  %507 = icmp eq i32 %506, 33
  br i1 %507, label %508, label %511

508:                                              ; preds = %503
  %509 = load i8*, i8** %10, align 8
  %510 = getelementptr inbounds i8, i8* %509, i32 1
  store i8* %510, i8** %10, align 8
  br label %511

511:                                              ; preds = %508, %503
  %512 = call i32 (...) @GetProcessHeap()
  %513 = load i8*, i8** %14, align 8
  %514 = call i32 @HeapFree(i32 %512, i32 0, i8* %513)
  %515 = load i8*, i8** %10, align 8
  store i8* %515, i8** %7, align 8
  br label %516

516:                                              ; preds = %511, %81
  %517 = load i8*, i8** %7, align 8
  ret i8* %517
}

declare dso_local signext i8 @get_arg(i32, i32, %struct.format_args*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @sprintfW(i8*, i8*, i8 signext) #1

declare dso_local i64 @isdigitW(i8 signext) #1

declare dso_local i32 @snprintfW(i8*, i32, i8*, i8 signext) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
