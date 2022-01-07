; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_decodeURIComponent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_decodeURIComponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Throw URIError: Invalid hex sequence\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Throw URIError: Invalid initial UTF character\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Throw URIError: Incomplete UTF sequence\0A\00", align 1
@CP_UTF8 = common dso_local global i32 0, align 4
@MB_ERR_INVALID_CHARS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Throw URIError: Invalid UTF sequence\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @JSGlobal_decodeURIComponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSGlobal_decodeURIComponent(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca [4 x i8], align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [4 x i8], align 1
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %19, align 8
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %6
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32* (...) @jsstr_undefined()
  %39 = call i32 @jsval_string(i32* %38)
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @S_OK, align 4
  store i32 %42, i32* %7, align 4
  br label %325

43:                                               ; preds = %6
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @to_flat_string(i32* %44, i32 %47, i32** %16, i8** %15)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %7, align 4
  br label %325

54:                                               ; preds = %43
  %55 = load i8*, i8** %15, align 8
  store i8* %55, i8** %14, align 8
  br label %56

56:                                               ; preds = %204, %54
  %57 = load i8*, i8** %14, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %205

60:                                               ; preds = %56
  %61 = load i8*, i8** %14, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 37
  br i1 %64, label %65, label %199

65:                                               ; preds = %60
  store i8 -128, i8* %22, align 1
  store i32 0, i32* %25, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @hex_to_int(i8 signext %68)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @hex_to_int(i8 signext %74)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71, %65
  %78 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @jsstr_release(i32* %79)
  %81 = load i32, i32* @E_FAIL, align 4
  store i32 %81, i32* %7, align 4
  br label %325

82:                                               ; preds = %71
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @hex_to_int(i8 signext %85)
  %87 = shl i32 %86, 4
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @hex_to_int(i8 signext %90)
  %92 = add nsw i32 %87, %91
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  store i8 %93, i8* %94, align 1
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  store i8* %96, i8** %14, align 8
  br label %97

97:                                               ; preds = %105, %82
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* %22, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load i8, i8* %22, align 1
  %107 = zext i8 %106 to i32
  %108 = ashr i32 %107, 1
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %22, align 1
  %110 = load i32, i32* %25, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %25, align 4
  br label %97

112:                                              ; preds = %97
  %113 = load i32, i32* %25, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %25, align 4
  %117 = icmp sgt i32 %116, 4
  br i1 %117, label %118, label %123

118:                                              ; preds = %115, %112
  %119 = call i32 @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @jsstr_release(i32* %120)
  %122 = load i32, i32* @E_FAIL, align 4
  store i32 %122, i32* %7, align 4
  br label %325

123:                                              ; preds = %115
  store i32 1, i32* %23, align 4
  br label %124

124:                                              ; preds = %172, %123
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %25, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %175

128:                                              ; preds = %124
  %129 = load i8*, i8** %14, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 37
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = call i32 @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32*, i32** %16, align 8
  %136 = call i32 @jsstr_release(i32* %135)
  %137 = load i32, i32* @E_FAIL, align 4
  store i32 %137, i32* %7, align 4
  br label %325

138:                                              ; preds = %128
  %139 = load i8*, i8** %14, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = call i32 @hex_to_int(i8 signext %141)
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load i8*, i8** %14, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  %147 = load i8, i8* %146, align 1
  %148 = call i32 @hex_to_int(i8 signext %147)
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %144, %138
  %151 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %152 = load i32*, i32** %16, align 8
  %153 = call i32 @jsstr_release(i32* %152)
  %154 = load i32, i32* @E_FAIL, align 4
  store i32 %154, i32* %7, align 4
  br label %325

155:                                              ; preds = %144
  %156 = load i8*, i8** %14, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = call i32 @hex_to_int(i8 signext %158)
  %160 = shl i32 %159, 4
  %161 = load i8*, i8** %14, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 2
  %163 = load i8, i8* %162, align 1
  %164 = call i32 @hex_to_int(i8 signext %163)
  %165 = add nsw i32 %160, %164
  %166 = trunc i32 %165 to i8
  %167 = load i32, i32* %23, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 %168
  store i8 %166, i8* %169, align 1
  %170 = load i8*, i8** %14, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 3
  store i8* %171, i8** %14, align 8
  br label %172

172:                                              ; preds = %155
  %173 = load i32, i32* %23, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %23, align 4
  br label %124

175:                                              ; preds = %124
  %176 = load i32, i32* @CP_UTF8, align 4
  %177 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %178 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %179 = load i32, i32* %25, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = load i32, i32* %25, align 4
  br label %184

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i32 [ %182, %181 ], [ 1, %183 ]
  %186 = call i32 @MultiByteToWideChar(i32 %176, i32 %177, i8* %178, i32 %185, i8* null, i64 0)
  store i32 %186, i32* %24, align 4
  %187 = load i32, i32* %24, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %191 = load i32*, i32** %16, align 8
  %192 = call i32 @jsstr_release(i32* %191)
  %193 = load i32, i32* @E_FAIL, align 4
  store i32 %193, i32* %7, align 4
  br label %325

194:                                              ; preds = %184
  %195 = load i32, i32* %24, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %19, align 8
  %198 = add nsw i64 %197, %196
  store i64 %198, i64* %19, align 8
  br label %204

199:                                              ; preds = %60
  %200 = load i8*, i8** %14, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %14, align 8
  %202 = load i64, i64* %19, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %19, align 8
  br label %204

204:                                              ; preds = %199, %194
  br label %56

205:                                              ; preds = %56
  %206 = load i64, i64* %19, align 8
  %207 = call i32* @jsstr_alloc_buf(i64 %206, i8** %18)
  store i32* %207, i32** %17, align 8
  %208 = load i32*, i32** %17, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %214, label %210

210:                                              ; preds = %205
  %211 = load i32*, i32** %16, align 8
  %212 = call i32 @jsstr_release(i32* %211)
  %213 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %213, i32* %7, align 4
  br label %325

214:                                              ; preds = %205
  %215 = load i8*, i8** %15, align 8
  store i8* %215, i8** %14, align 8
  br label %216

216:                                              ; preds = %310, %214
  %217 = load i8*, i8** %14, align 8
  %218 = load i8, i8* %217, align 1
  %219 = icmp ne i8 %218, 0
  br i1 %219, label %220, label %311

220:                                              ; preds = %216
  %221 = load i8*, i8** %14, align 8
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 37
  br i1 %224, label %225, label %302

225:                                              ; preds = %220
  store i8 -128, i8* %27, align 1
  store i32 0, i32* %30, align 4
  %226 = load i8*, i8** %14, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 1
  %228 = load i8, i8* %227, align 1
  %229 = call i32 @hex_to_int(i8 signext %228)
  %230 = shl i32 %229, 4
  %231 = load i8*, i8** %14, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 2
  %233 = load i8, i8* %232, align 1
  %234 = call i32 @hex_to_int(i8 signext %233)
  %235 = add nsw i32 %230, %234
  %236 = trunc i32 %235 to i8
  %237 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  store i8 %236, i8* %237, align 1
  %238 = load i8*, i8** %14, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 3
  store i8* %239, i8** %14, align 8
  br label %240

240:                                              ; preds = %248, %225
  %241 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = load i8, i8* %27, align 1
  %245 = zext i8 %244 to i32
  %246 = and i32 %243, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %240
  %249 = load i8, i8* %27, align 1
  %250 = zext i8 %249 to i32
  %251 = ashr i32 %250, 1
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %27, align 1
  %253 = load i32, i32* %30, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %30, align 4
  br label %240

255:                                              ; preds = %240
  store i32 1, i32* %28, align 4
  br label %256

256:                                              ; preds = %277, %255
  %257 = load i32, i32* %28, align 4
  %258 = load i32, i32* %30, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %280

260:                                              ; preds = %256
  %261 = load i8*, i8** %14, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 1
  %263 = load i8, i8* %262, align 1
  %264 = call i32 @hex_to_int(i8 signext %263)
  %265 = shl i32 %264, 4
  %266 = load i8*, i8** %14, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 2
  %268 = load i8, i8* %267, align 1
  %269 = call i32 @hex_to_int(i8 signext %268)
  %270 = add nsw i32 %265, %269
  %271 = trunc i32 %270 to i8
  %272 = load i32, i32* %28, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 %273
  store i8 %271, i8* %274, align 1
  %275 = load i8*, i8** %14, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 3
  store i8* %276, i8** %14, align 8
  br label %277

277:                                              ; preds = %260
  %278 = load i32, i32* %28, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %28, align 4
  br label %256

280:                                              ; preds = %256
  %281 = load i32, i32* @CP_UTF8, align 4
  %282 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %283 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  %284 = load i32, i32* %30, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = load i32, i32* %30, align 4
  br label %289

288:                                              ; preds = %280
  br label %289

289:                                              ; preds = %288, %286
  %290 = phi i32 [ %287, %286 ], [ 1, %288 ]
  %291 = load i8*, i8** %18, align 8
  %292 = load i64, i64* %19, align 8
  %293 = call i32 @MultiByteToWideChar(i32 %281, i32 %282, i8* %283, i32 %290, i8* %291, i64 %292)
  store i32 %293, i32* %29, align 4
  %294 = load i32, i32* %29, align 4
  %295 = sext i32 %294 to i64
  %296 = load i64, i64* %19, align 8
  %297 = sub nsw i64 %296, %295
  store i64 %297, i64* %19, align 8
  %298 = load i32, i32* %29, align 4
  %299 = load i8*, i8** %18, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  store i8* %301, i8** %18, align 8
  br label %310

302:                                              ; preds = %220
  %303 = load i8*, i8** %14, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %14, align 8
  %305 = load i8, i8* %303, align 1
  %306 = load i8*, i8** %18, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %18, align 8
  store i8 %305, i8* %306, align 1
  %308 = load i64, i64* %19, align 8
  %309 = add nsw i64 %308, -1
  store i64 %309, i64* %19, align 8
  br label %310

310:                                              ; preds = %302, %289
  br label %216

311:                                              ; preds = %216
  %312 = load i32*, i32** %16, align 8
  %313 = call i32 @jsstr_release(i32* %312)
  %314 = load i32*, i32** %13, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  %317 = load i32*, i32** %17, align 8
  %318 = call i32 @jsval_string(i32* %317)
  %319 = load i32*, i32** %13, align 8
  store i32 %318, i32* %319, align 4
  br label %323

320:                                              ; preds = %311
  %321 = load i32*, i32** %17, align 8
  %322 = call i32 @jsstr_release(i32* %321)
  br label %323

323:                                              ; preds = %320, %316
  %324 = load i32, i32* @S_OK, align 4
  store i32 %324, i32* %7, align 4
  br label %325

325:                                              ; preds = %323, %210, %189, %150, %133, %118, %77, %52, %41
  %326 = load i32, i32* %7, align 4
  ret i32 %326
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32* @jsstr_undefined(...) #1

declare dso_local i32 @to_flat_string(i32*, i32, i32**, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @hex_to_int(i8 signext) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i64) #1

declare dso_local i32* @jsstr_alloc_buf(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
