; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_parse_directives.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_parse_directives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"#define FFI_SCOPE\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"FFI: failed pre-loading '%s', bad FFI_SCOPE define\00", align 1
@zend_ffi_exception_ce = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed loading '%s', bad FFI_SCOPE define\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"FFI: failed pre-loading '%s', FFI_SCOPE defined twice\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed loading '%s', FFI_SCOPE defined twice\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"#define FFI_LIB\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"FFI: failed pre-loading '%s', bad FFI_LIB define\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Failed loading '%s', bad FFI_LIB define\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"FFI: failed pre-loading '%s', FFI_LIB defined twice\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Failed loading '%s', FFI_LIB defined twice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8**, i8**, i64)* @zend_ffi_parse_directives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zend_ffi_parse_directives(i8* %0, i8* %1, i8** %2, i8** %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8**, i8*** %9, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8**, i8*** %10, align 8
  store i8* null, i8** %14, align 8
  br label %15

15:                                               ; preds = %294, %5
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 35
  br i1 %19, label %20, label %295

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 17)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %156

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 17
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 17
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 9
  br i1 %35, label %36, label %156

36:                                               ; preds = %30, %24
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 18
  store i8* %38, i8** %12, align 8
  br label %39

39:                                               ; preds = %51, %36
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 9
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ true, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %12, align 8
  br label %39

54:                                               ; preds = %49
  %55 = load i8*, i8** %12, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 34
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @E_WARNING, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @zend_error(i32 %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @zend_ffi_exception_ce, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @zend_throw_error(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %66, %62
  store i8* null, i8** %6, align 8
  br label %297

71:                                               ; preds = %54
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %12, align 8
  %74 = load i8**, i8*** %9, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @E_WARNING, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @zend_error(i32 %81, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @zend_ffi_exception_ce, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @zend_throw_error(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84, %80
  store i8* null, i8** %6, align 8
  br label %297

89:                                               ; preds = %71
  %90 = load i8*, i8** %12, align 8
  %91 = load i8**, i8*** %9, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %89, %119
  %93 = load i8*, i8** %12, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 34
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i8*, i8** %12, align 8
  store i8 0, i8* %98, align 1
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %12, align 8
  br label %122

101:                                              ; preds = %92
  %102 = load i8*, i8** %12, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sle i32 %104, 32
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* @E_WARNING, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @zend_error(i32 %110, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %111)
  br label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @zend_ffi_exception_ce, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @zend_throw_error(i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %113, %109
  store i8* null, i8** %6, align 8
  br label %297

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118
  %120 = load i8*, i8** %12, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %12, align 8
  br label %92

122:                                              ; preds = %97
  br label %123

123:                                              ; preds = %135, %122
  %124 = load i8*, i8** %12, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %12, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 9
  br label %133

133:                                              ; preds = %128, %123
  %134 = phi i1 [ true, %123 ], [ %132, %128 ]
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = load i8*, i8** %12, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %12, align 8
  br label %123

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %151, %138
  %140 = load i8*, i8** %12, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 13
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load i8*, i8** %12, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 10
  br label %149

149:                                              ; preds = %144, %139
  %150 = phi i1 [ true, %139 ], [ %148, %144 ]
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %152 = load i8*, i8** %12, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %12, align 8
  br label %139

154:                                              ; preds = %149
  %155 = load i8*, i8** %12, align 8
  store i8* %155, i8** %8, align 8
  br label %294

156:                                              ; preds = %30, %20
  %157 = load i8*, i8** %8, align 8
  %158 = call i64 @strncmp(i8* %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 15)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %292

160:                                              ; preds = %156
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 15
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 32
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 15
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 9
  br i1 %171, label %172, label %292

172:                                              ; preds = %166, %160
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 16
  store i8* %174, i8** %12, align 8
  br label %175

175:                                              ; preds = %187, %172
  %176 = load i8*, i8** %12, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 32
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load i8*, i8** %12, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 9
  br label %185

185:                                              ; preds = %180, %175
  %186 = phi i1 [ true, %175 ], [ %184, %180 ]
  br i1 %186, label %187, label %190

187:                                              ; preds = %185
  %188 = load i8*, i8** %12, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %12, align 8
  br label %175

190:                                              ; preds = %185
  %191 = load i8*, i8** %12, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 34
  br i1 %194, label %195, label %207

195:                                              ; preds = %190
  %196 = load i64, i64* %11, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i32, i32* @E_WARNING, align 4
  %200 = load i8*, i8** %7, align 8
  %201 = call i32 @zend_error(i32 %199, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %200)
  br label %206

202:                                              ; preds = %195
  %203 = load i32, i32* @zend_ffi_exception_ce, align 4
  %204 = load i8*, i8** %7, align 8
  %205 = call i32 @zend_throw_error(i32 %203, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %202, %198
  store i8* null, i8** %6, align 8
  br label %297

207:                                              ; preds = %190
  %208 = load i8*, i8** %12, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %12, align 8
  %210 = load i8**, i8*** %10, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %225

213:                                              ; preds = %207
  %214 = load i64, i64* %11, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* @E_WARNING, align 4
  %218 = load i8*, i8** %7, align 8
  %219 = call i32 @zend_error(i32 %217, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i8* %218)
  br label %224

220:                                              ; preds = %213
  %221 = load i32, i32* @zend_ffi_exception_ce, align 4
  %222 = load i8*, i8** %7, align 8
  %223 = call i32 @zend_throw_error(i32 %221, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %222)
  br label %224

224:                                              ; preds = %220, %216
  store i8* null, i8** %6, align 8
  br label %297

225:                                              ; preds = %207
  %226 = load i8*, i8** %12, align 8
  %227 = load i8**, i8*** %10, align 8
  store i8* %226, i8** %227, align 8
  br label %228

228:                                              ; preds = %225, %255
  %229 = load i8*, i8** %12, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 34
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i8*, i8** %12, align 8
  store i8 0, i8* %234, align 1
  %235 = load i8*, i8** %12, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %12, align 8
  br label %258

237:                                              ; preds = %228
  %238 = load i8*, i8** %12, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp sle i32 %240, 32
  br i1 %241, label %242, label %254

242:                                              ; preds = %237
  %243 = load i64, i64* %11, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load i32, i32* @E_WARNING, align 4
  %247 = load i8*, i8** %7, align 8
  %248 = call i32 @zend_error(i32 %246, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %247)
  br label %253

249:                                              ; preds = %242
  %250 = load i32, i32* @zend_ffi_exception_ce, align 4
  %251 = load i8*, i8** %7, align 8
  %252 = call i32 @zend_throw_error(i32 %250, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %251)
  br label %253

253:                                              ; preds = %249, %245
  store i8* null, i8** %6, align 8
  br label %297

254:                                              ; preds = %237
  br label %255

255:                                              ; preds = %254
  %256 = load i8*, i8** %12, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %12, align 8
  br label %228

258:                                              ; preds = %233
  br label %259

259:                                              ; preds = %271, %258
  %260 = load i8*, i8** %12, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 32
  br i1 %263, label %269, label %264

264:                                              ; preds = %259
  %265 = load i8*, i8** %12, align 8
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 9
  br label %269

269:                                              ; preds = %264, %259
  %270 = phi i1 [ true, %259 ], [ %268, %264 ]
  br i1 %270, label %271, label %274

271:                                              ; preds = %269
  %272 = load i8*, i8** %12, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %12, align 8
  br label %259

274:                                              ; preds = %269
  br label %275

275:                                              ; preds = %287, %274
  %276 = load i8*, i8** %12, align 8
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 13
  br i1 %279, label %285, label %280

280:                                              ; preds = %275
  %281 = load i8*, i8** %12, align 8
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 10
  br label %285

285:                                              ; preds = %280, %275
  %286 = phi i1 [ true, %275 ], [ %284, %280 ]
  br i1 %286, label %287, label %290

287:                                              ; preds = %285
  %288 = load i8*, i8** %12, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %12, align 8
  br label %275

290:                                              ; preds = %285
  %291 = load i8*, i8** %12, align 8
  store i8* %291, i8** %8, align 8
  br label %293

292:                                              ; preds = %166, %156
  br label %295

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %293, %154
  br label %15

295:                                              ; preds = %292, %15
  %296 = load i8*, i8** %8, align 8
  store i8* %296, i8** %6, align 8
  br label %297

297:                                              ; preds = %295, %253, %224, %206, %117, %88, %70
  %298 = load i8*, i8** %6, align 8
  ret i8* %298
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @zend_error(i32, i8*, i8*) #1

declare dso_local i32 @zend_throw_error(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
