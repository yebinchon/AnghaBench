; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_export_hkey.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_export_hkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.export_hkey.key_format = private unnamed_addr constant [9 x i8] c"\0D\0A[%s]\0D\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@__const.export_hkey.val_start = private unnamed_addr constant [6 x i8] c"\22%s\22=\00", align 1
@__const.export_hkey.std_val = private unnamed_addr constant [3 x i8] c"@=\00", align 1
@__const.export_hkey.start = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@__const.export_hkey.end = private unnamed_addr constant [4 x i8] c"\22\0D\0A\00", align 1
@__const.export_hkey.format = private unnamed_addr constant [13 x i8] c"dword:%08x\0D\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%S: warning - unsupported registry format '%ld', treat as binary\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"key name: \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"value name:\22%s\22\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8**, i32*, i8**, i32*, i32**, i32*, i8**, i32*, i64)* @export_hkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_hkey(i32* %0, i32 %1, i8** %2, i32* %3, i8** %4, i32* %5, i32** %6, i32* %7, i8** %8, i32* %9, i64 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca [9 x i8], align 1
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [6 x i8], align 1
  %36 = alloca [3 x i8], align 1
  %37 = alloca i8*, align 8
  %38 = alloca [2 x i8], align 1
  %39 = alloca [4 x i8], align 1
  %40 = alloca i32, align 4
  %41 = alloca [13 x i8], align 1
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8** %2, i8*** %14, align 8
  store i32* %3, i32** %15, align 8
  store i8** %4, i8*** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32** %6, i32*** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8** %8, i8*** %20, align 8
  store i32* %9, i32** %21, align 8
  store i64 %10, i64* %22, align 8
  %46 = bitcast [9 x i8]* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.export_hkey.key_format, i32 0, i32 0), i64 9, i1 false)
  %47 = load i32, i32* %13, align 4
  %48 = call i64 @RegQueryInfoKeyW(i32 %47, i32* null, i32* null, i32* null, i32* null, i32* %23, i32* null, i32* null, i32* %24, i32* %25, i32* null, i32* null)
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %11
  %52 = call i32 (...) @REGPROC_print_error()
  br label %53

53:                                               ; preds = %51, %11
  %54 = load i8**, i8*** %14, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlenW(i8* %55)
  store i32 %56, i32* %26, align 4
  %57 = load i8**, i8*** %14, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %26, align 4
  %61 = add nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  %63 = call i32 @REGPROC_resize_char_buffer(i8** %57, i32* %58, i32 %62)
  %64 = load i8**, i8*** %16, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %24, align 4
  %67 = call i32 @REGPROC_resize_char_buffer(i8** %64, i32* %65, i32 %66)
  %68 = load i32**, i32*** %18, align 8
  %69 = load i32*, i32** %19, align 8
  %70 = load i32, i32* %25, align 4
  %71 = call i32 @REGPROC_resize_binary_buffer(i32** %68, i32* %69, i32 %70)
  %72 = load i8**, i8*** %20, align 8
  %73 = load i32*, i32** %21, align 8
  %74 = load i8**, i8*** %14, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @lstrlenW(i8* %75)
  %77 = add nsw i32 %76, 4
  %78 = call i32 @REGPROC_resize_char_buffer(i8** %72, i32* %73, i32 %77)
  %79 = load i8**, i8*** %20, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds [9 x i8], [9 x i8]* %30, i64 0, i64 0
  %82 = load i8**, i8*** %14, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, i8*, ...) @sprintfW(i8* %80, i8* %81, i8* %83)
  %85 = load i32*, i32** %12, align 8
  %86 = load i8**, i8*** %20, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %22, align 8
  %89 = call i32 @REGPROC_write_line(i32* %85, i8* %87, i64 %88)
  store i32 0, i32* %27, align 4
  %90 = load i64, i64* @TRUE, align 8
  store i64 %90, i64* %28, align 8
  br label %91

91:                                               ; preds = %320, %53
  %92 = load i64, i64* %28, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %321

94:                                               ; preds = %91
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %32, align 4
  %97 = load i32*, i32** %19, align 8
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %33, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %27, align 4
  %101 = load i8**, i8*** %16, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = load i32**, i32*** %18, align 8
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @RegEnumValueW(i32 %99, i32 %100, i8* %102, i32* %32, i32* null, i32* %31, i32* %104, i32* %33)
  store i64 %105, i64* %29, align 8
  %106 = load i64, i64* %29, align 8
  %107 = load i64, i64* @ERROR_MORE_DATA, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %94
  %110 = load i8**, i8*** %16, align 8
  %111 = load i32*, i32** %17, align 8
  %112 = load i32, i32* %32, align 4
  %113 = call i32 @REGPROC_resize_char_buffer(i8** %110, i32* %111, i32 %112)
  %114 = load i32**, i32*** %18, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = load i32, i32* %33, align 4
  %117 = call i32 @REGPROC_resize_binary_buffer(i32** %114, i32* %115, i32 %116)
  br label %320

118:                                              ; preds = %94
  %119 = load i64, i64* %29, align 8
  %120 = load i64, i64* @ERROR_SUCCESS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i64, i64* @FALSE, align 8
  store i64 %123, i64* %28, align 8
  %124 = load i64, i64* %29, align 8
  %125 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = call i32 (...) @REGPROC_print_error()
  br label %129

129:                                              ; preds = %127, %122
  br label %319

130:                                              ; preds = %118
  %131 = load i32, i32* %27, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %27, align 4
  %133 = load i8**, i8*** %16, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %138, label %174

138:                                              ; preds = %130
  %139 = bitcast [6 x i8]* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %139, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.export_hkey.val_start, i32 0, i32 0), i64 6, i1 false)
  store i32 0, i32* %34, align 4
  %140 = load i8**, i8*** %20, align 8
  %141 = load i32*, i32** %21, align 8
  %142 = load i8**, i8*** %16, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = load i8**, i8*** %16, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @lstrlenW(i8* %145)
  %147 = call i32 @REGPROC_export_string(i8** %140, i32* %141, i32* %34, i8* %143, i32 %146)
  %148 = load i8**, i8*** %16, align 8
  %149 = load i32*, i32** %17, align 8
  %150 = load i8**, i8*** %20, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @lstrlenW(i8* %151)
  %153 = add nsw i32 %152, 1
  %154 = call i32 @REGPROC_resize_char_buffer(i8** %148, i32* %149, i32 %153)
  %155 = load i8**, i8*** %16, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = load i8**, i8*** %20, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @lstrcpyW(i8* %156, i8* %158)
  %160 = load i8**, i8*** %16, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @lstrlenW(i8* %161)
  %163 = add nsw i32 3, %162
  store i32 %163, i32* %34, align 4
  %164 = load i8**, i8*** %20, align 8
  %165 = load i32*, i32** %21, align 8
  %166 = load i32, i32* %34, align 4
  %167 = call i32 @REGPROC_resize_char_buffer(i8** %164, i32* %165, i32 %166)
  %168 = load i8**, i8*** %20, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds [6 x i8], [6 x i8]* %35, i64 0, i64 0
  %171 = load i8**, i8*** %16, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i8*, i8*, ...) @sprintfW(i8* %169, i8* %170, i8* %172)
  br label %184

174:                                              ; preds = %130
  %175 = bitcast [3 x i8]* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %175, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.export_hkey.std_val, i32 0, i32 0), i64 3, i1 false)
  store i32 2, i32* %34, align 4
  %176 = load i8**, i8*** %20, align 8
  %177 = load i32*, i32** %21, align 8
  %178 = load i32, i32* %34, align 4
  %179 = call i32 @REGPROC_resize_char_buffer(i8** %176, i32* %177, i32 %178)
  %180 = load i8**, i8*** %20, align 8
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds [3 x i8], [3 x i8]* %36, i64 0, i64 0
  %183 = call i32 @lstrcpyW(i8* %181, i8* %182)
  br label %184

184:                                              ; preds = %174, %138
  %185 = load i32, i32* %31, align 4
  switch i32 %185, label %279 [
    i32 128, label %186
    i32 131, label %262
    i32 130, label %304
    i32 129, label %304
    i32 132, label %304
  ]

186:                                              ; preds = %184
  %187 = load i32**, i32*** %18, align 8
  %188 = load i32*, i32** %187, align 8
  %189 = bitcast i32* %188 to i8*
  store i8* %189, i8** %37, align 8
  %190 = load i32, i32* %33, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp ult i64 %191, 1
  br i1 %192, label %208, label %193

193:                                              ; preds = %186
  %194 = load i32, i32* %33, align 4
  %195 = sext i32 %194 to i64
  %196 = urem i64 %195, 1
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %193
  %199 = load i8*, i8** %37, align 8
  %200 = load i32, i32* %33, align 4
  %201 = sext i32 %200 to i64
  %202 = udiv i64 %201, 1
  %203 = sub i64 %202, 1
  %204 = getelementptr inbounds i8, i8* %199, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %198, %193, %186
  %209 = load i8**, i8*** %20, align 8
  %210 = load i32*, i32** %21, align 8
  %211 = load i32, i32* %31, align 4
  %212 = load i32**, i32*** %18, align 8
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %33, align 4
  %215 = load i64, i64* %22, align 8
  %216 = call i32 @REGPROC_export_binary(i8** %209, i32* %210, i32* %34, i32 %211, i32* %213, i32 %214, i64 %215)
  br label %261

217:                                              ; preds = %198
  %218 = bitcast [2 x i8]* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %218, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.export_hkey.start, i32 0, i32 0), i64 2, i1 false)
  %219 = bitcast [4 x i8]* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %219, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.export_hkey.end, i32 0, i32 0), i64 4, i1 false)
  %220 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %221 = call i32 @lstrlenW(i8* %220)
  store i32 %221, i32* %40, align 4
  %222 = load i8**, i8*** %20, align 8
  %223 = load i32*, i32** %21, align 8
  %224 = load i32, i32* %34, align 4
  %225 = load i32, i32* %40, align 4
  %226 = add nsw i32 %224, %225
  %227 = call i32 @REGPROC_resize_char_buffer(i8** %222, i32* %223, i32 %226)
  %228 = load i8**, i8*** %20, align 8
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %34, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %234 = call i32 @lstrcpyW(i8* %232, i8* %233)
  %235 = load i32, i32* %40, align 4
  %236 = load i32, i32* %34, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %34, align 4
  %238 = load i8**, i8*** %20, align 8
  %239 = load i32*, i32** %21, align 8
  %240 = load i8*, i8** %37, align 8
  %241 = load i32, i32* %33, align 4
  %242 = sext i32 %241 to i64
  %243 = udiv i64 %242, 1
  %244 = sub i64 %243, 1
  %245 = trunc i64 %244 to i32
  %246 = call i32 @REGPROC_export_string(i8** %238, i32* %239, i32* %34, i8* %240, i32 %245)
  %247 = load i8**, i8*** %20, align 8
  %248 = load i32*, i32** %21, align 8
  %249 = load i32, i32* %34, align 4
  %250 = getelementptr inbounds [4 x i8], [4 x i8]* %39, i64 0, i64 0
  %251 = call i32 @lstrlenW(i8* %250)
  %252 = add nsw i32 %249, %251
  %253 = call i32 @REGPROC_resize_char_buffer(i8** %247, i32* %248, i32 %252)
  %254 = load i8**, i8*** %20, align 8
  %255 = load i8*, i8** %254, align 8
  %256 = load i32, i32* %34, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = getelementptr inbounds [4 x i8], [4 x i8]* %39, i64 0, i64 0
  %260 = call i32 @lstrcpyW(i8* %258, i8* %259)
  br label %261

261:                                              ; preds = %217, %208
  br label %313

262:                                              ; preds = %184
  %263 = bitcast [13 x i8]* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %263, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.export_hkey.format, i32 0, i32 0), i64 13, i1 false)
  %264 = load i8**, i8*** %20, align 8
  %265 = load i32*, i32** %21, align 8
  %266 = load i32, i32* %34, align 4
  %267 = add nsw i32 %266, 15
  %268 = call i32 @REGPROC_resize_char_buffer(i8** %264, i32* %265, i32 %267)
  %269 = load i8**, i8*** %20, align 8
  %270 = load i8*, i8** %269, align 8
  %271 = load i32, i32* %34, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = getelementptr inbounds [13 x i8], [13 x i8]* %41, i64 0, i64 0
  %275 = load i32**, i32*** %18, align 8
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (i8*, i8*, ...) @sprintfW(i8* %273, i8* %274, i32 %277)
  br label %313

279:                                              ; preds = %184
  %280 = load i8**, i8*** %14, align 8
  %281 = load i8*, i8** %280, align 8
  %282 = call i8* @GetMultiByteString(i8* %281)
  store i8* %282, i8** %42, align 8
  %283 = load i8**, i8*** %16, align 8
  %284 = load i8*, i8** %283, align 8
  %285 = call i8* @GetMultiByteString(i8* %284)
  store i8* %285, i8** %43, align 8
  %286 = load i32, i32* @stderr, align 4
  %287 = call i32 (...) @getAppName()
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = load i32, i32* %31, align 4
  %291 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %286, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %289, i32 %290)
  %292 = load i32, i32* @stderr, align 4
  %293 = load i8*, i8** %42, align 8
  %294 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %292, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %293)
  %295 = load i32, i32* @stderr, align 4
  %296 = load i8*, i8** %43, align 8
  %297 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %295, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %296)
  %298 = call i32 (...) @GetProcessHeap()
  %299 = load i8*, i8** %42, align 8
  %300 = call i32 @HeapFree(i32 %298, i32 0, i8* %299)
  %301 = call i32 (...) @GetProcessHeap()
  %302 = load i8*, i8** %43, align 8
  %303 = call i32 @HeapFree(i32 %301, i32 0, i8* %302)
  br label %304

304:                                              ; preds = %184, %184, %184, %279
  %305 = load i8**, i8*** %20, align 8
  %306 = load i32*, i32** %21, align 8
  %307 = load i32, i32* %31, align 4
  %308 = load i32**, i32*** %18, align 8
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %33, align 4
  %311 = load i64, i64* %22, align 8
  %312 = call i32 @REGPROC_export_binary(i8** %305, i32* %306, i32* %34, i32 %307, i32* %309, i32 %310, i64 %311)
  br label %313

313:                                              ; preds = %304, %262, %261
  %314 = load i32*, i32** %12, align 8
  %315 = load i8**, i8*** %20, align 8
  %316 = load i8*, i8** %315, align 8
  %317 = load i64, i64* %22, align 8
  %318 = call i32 @REGPROC_write_line(i32* %314, i8* %316, i64 %317)
  br label %319

319:                                              ; preds = %313, %129
  br label %320

320:                                              ; preds = %319, %109
  br label %91

321:                                              ; preds = %91
  store i32 0, i32* %27, align 4
  %322 = load i64, i64* @TRUE, align 8
  store i64 %322, i64* %28, align 8
  %323 = load i8**, i8*** %14, align 8
  %324 = load i8*, i8** %323, align 8
  %325 = load i32, i32* %26, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  store i8 92, i8* %327, align 1
  br label %328

328:                                              ; preds = %400, %321
  %329 = load i64, i64* %28, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %401

331:                                              ; preds = %328
  %332 = load i32*, i32** %15, align 8
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %26, align 4
  %335 = sub nsw i32 %333, %334
  %336 = sub nsw i32 %335, 1
  store i32 %336, i32* %44, align 4
  %337 = load i32, i32* %13, align 4
  %338 = load i32, i32* %27, align 4
  %339 = load i8**, i8*** %14, align 8
  %340 = load i8*, i8** %339, align 8
  %341 = load i32, i32* %26, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %340, i64 %342
  %344 = getelementptr inbounds i8, i8* %343, i64 1
  %345 = call i64 @RegEnumKeyExW(i32 %337, i32 %338, i8* %344, i32* %44, i32* null, i32* null, i32* null, i32* null)
  store i64 %345, i64* %29, align 8
  %346 = load i64, i64* %29, align 8
  %347 = load i64, i64* @ERROR_MORE_DATA, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %357

349:                                              ; preds = %331
  %350 = load i8**, i8*** %14, align 8
  %351 = load i32*, i32** %15, align 8
  %352 = load i32, i32* %26, align 4
  %353 = add nsw i32 %352, 1
  %354 = load i32, i32* %44, align 4
  %355 = add nsw i32 %353, %354
  %356 = call i32 @REGPROC_resize_char_buffer(i8** %350, i32* %351, i32 %355)
  br label %400

357:                                              ; preds = %331
  %358 = load i64, i64* %29, align 8
  %359 = load i64, i64* @ERROR_SUCCESS, align 8
  %360 = icmp ne i64 %358, %359
  br i1 %360, label %361, label %369

361:                                              ; preds = %357
  %362 = load i64, i64* @FALSE, align 8
  store i64 %362, i64* %28, align 8
  %363 = load i64, i64* %29, align 8
  %364 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %365 = icmp ne i64 %363, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %361
  %367 = call i32 (...) @REGPROC_print_error()
  br label %368

368:                                              ; preds = %366, %361
  br label %399

369:                                              ; preds = %357
  %370 = load i32, i32* %27, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %27, align 4
  %372 = load i32, i32* %13, align 4
  %373 = load i8**, i8*** %14, align 8
  %374 = load i8*, i8** %373, align 8
  %375 = load i32, i32* %26, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  %378 = getelementptr inbounds i8, i8* %377, i64 1
  %379 = call i64 @RegOpenKeyW(i32 %372, i8* %378, i32* %45)
  %380 = load i64, i64* @ERROR_SUCCESS, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %396

382:                                              ; preds = %369
  %383 = load i32*, i32** %12, align 8
  %384 = load i32, i32* %45, align 4
  %385 = load i8**, i8*** %14, align 8
  %386 = load i32*, i32** %15, align 8
  %387 = load i8**, i8*** %16, align 8
  %388 = load i32*, i32** %17, align 8
  %389 = load i32**, i32*** %18, align 8
  %390 = load i32*, i32** %19, align 8
  %391 = load i8**, i8*** %20, align 8
  %392 = load i32*, i32** %21, align 8
  %393 = load i64, i64* %22, align 8
  call void @export_hkey(i32* %383, i32 %384, i8** %385, i32* %386, i8** %387, i32* %388, i32** %389, i32* %390, i8** %391, i32* %392, i64 %393)
  %394 = load i32, i32* %45, align 4
  %395 = call i32 @RegCloseKey(i32 %394)
  br label %398

396:                                              ; preds = %369
  %397 = call i32 (...) @REGPROC_print_error()
  br label %398

398:                                              ; preds = %396, %382
  br label %399

399:                                              ; preds = %398, %368
  br label %400

400:                                              ; preds = %399, %349
  br label %328

401:                                              ; preds = %328
  %402 = load i8**, i8*** %14, align 8
  %403 = load i8*, i8** %402, align 8
  %404 = load i32, i32* %26, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, i8* %403, i64 %405
  store i8 0, i8* %406, align 1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @REGPROC_print_error(...) #2

declare dso_local i32 @strlenW(i8*) #2

declare dso_local i32 @REGPROC_resize_char_buffer(i8**, i32*, i32) #2

declare dso_local i32 @REGPROC_resize_binary_buffer(i32**, i32*, i32) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @sprintfW(i8*, i8*, ...) #2

declare dso_local i32 @REGPROC_write_line(i32*, i8*, i64) #2

declare dso_local i64 @RegEnumValueW(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @REGPROC_export_string(i8**, i32*, i32*, i8*, i32) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @REGPROC_export_binary(i8**, i32*, i32*, i32, i32*, i32, i64) #2

declare dso_local i8* @GetMultiByteString(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i32 @getAppName(...) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @RegEnumKeyExW(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @RegOpenKeyW(i32, i8*, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
